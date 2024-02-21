<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>leeveloper</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <!-- jquery -->
    
    <script src="resources/js/product.js" charset="UTF-8"></script>
    <!-- js -->
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- swal -->
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        #pdc {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        #product {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        #product td {
            padding: 10px;
            text-align: center;
        }
        #product img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        #delId {
            margin-top: 10px;
        }
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination a {
            text-decoration: none;
            padding: 5px 10px;
            margin: 0 5px;
            border: 1px solid #ddd;
            color: #333;
        }
        .pagination a:hover {
            background-color: #f4f4f4;
        }
        .pagination .current {
            
            color: #000000;
            
        }
    </style>
</head>
<body>

<script>
        function list(sPrd2, page) {
            location.href = "searchPrd2?sPrd2=" + sPrd2 + "&curPage=" + page;
        }
    </script>

<%@ include file="../include/header.jsp"%>
<br><br><br>
<div id="pdc" style="margin-top: 100px;">
    <table id="product">
        <c:if test="${(fn:length(map.list)) eq 0}">
            <tr>
                <td colspan="4">제품이 없습니다.</td>
            </tr>
        </c:if>
        <c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}" var="row">
            <tr>
                <c:forEach begin="0" end="3" var="col">
                    <c:set var="item" value="${map.list[row * 4 + col]}"/>
                    <c:if test="${not empty item}">
                        <td width="300">
                            <div>
                                <a href="modifyproduct?prd_id=${item.prd_id}" style="width: 200px;">
                                    <img src="${item.prd_img}" width="400" height="200">
                                </a>
                            </div>
                            <div>
                                <p style="font-size: 20px;">${item.prd_name}</p>
                            </div>
                            <div>
                                <p style="font-size: 20px;"><fmt:formatNumber value="${item.prd_price}" pattern="#,###,###" />원</p>
                            </div>
                            <img src="resources/img/image/close.png" class="${item.prd_id}" id="delId" name="${item.prd_img}" onclick="delp(this)" style="width: 30px; cursor: pointer;" title="삭제">
                        </td>
                    </c:if>
                </c:forEach>
            </tr>
        </c:forEach>
        <h2 align="center" style="color: red; font-size: 18px;">이미지를 누르면 수정 등록 가능합니다.</h2><br><br>
        <c:if test="${(fn:length(map.list)) ne 0}">
            <tr>
                <td colspan="4" class="pagination">
                    <c:if test="${map.pager.curBlock > 1}">
                        <a href="#" onClick="list('${map.sPrd}', '1')">[처음]</a>
                    </c:if>
                    <c:if test="${map.pager.curBlock > 1}">
                        <a href="#" onClick="list('${map.sPrd}', '${map.pager.prevPage}')">[이전]</a>
                    </c:if>
                    <c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
                        <c:choose>
                            <c:when test="${num == map.pager.curPage}">
                                <span class="current">${num}</span>
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="list('${map.sPrd}', '${num}')">${num}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${map.pager.curBlock < map.pager.totBlock}">
                        <a href="#" onClick="list('${map.sPrd}', '${map.pager.nextPage}')">[다음]</a>
                    </c:if>
                    <c:if test="${map.pager.curBlock < map.pager.totPage}">
                        <a href="#" onClick="list('${map.sPrd}', '${map.pager.totPage}')">[끝]</a>
                    </c:if>
                </td>
            </tr>
        </c:if>
    </table>
</div>
<div style="margin-top: 100px;">
    <%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>
