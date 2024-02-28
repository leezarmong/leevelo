<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>leeveloper</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .container {
            width: 100%; /* Adjust as needed */
            max-width: 1400px; /* Adjust as needed */
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container mt-5">
    <div class="text-center">
        <h2 class="mb-4">Order</h2>
    </div>
    <div class="order mt-4">
        <div class="table-responsive">
            <table class="table table-striped table-hover" style="width: 100%">
                <thead>
                <tr>
                    <th>주문날짜</th>
                    <th>회원 아이디</th>
                    <th>주소</th>
                    <th>전화 번호</th>
                    <th>배송상태</th>
                    <th>결제방법</th>
                    <th>주문 상품</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty map.list}">
                        <c:forEach var="row" items="${map.list}">
                            <tr>
                                <td>${row.order_date}</td>
                                <td>${row.member_id}</td>
                                <td>${row.member_addr}</td>
                                <td>${row.member_phone}</td>
                                <td>${row.order_process}</td>
                                <td>${row.order_payment}</td>
                                <td>${row.order_name}</td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="6" class="text-center">주문 내역이 없습니다.</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </div>
    <!-- pager -->
    <div class="pagination justify-content-center">
        <ul class="pagination">
            <c:if test="${map.pager.curBlock > 1}">
                <li class="page-item"><a class="page-link" href="paymentList">처음</a></li>
                <li class="page-item"><a class="page-link" href="paymentList?curPage=${map.pager.prevPage}">이전</a></li>
            </c:if>
            <c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
                <li class="page-item <c:if test='${num == map.pager.curPage}'>active</c:if>'">
                    <a class="page-link" href="paymentList?curPage=${num}">${num}</a>
                </li>
            </c:forEach>
            <c:if test="${map.pager.curBlock < map.pager.totBlock}">
                <li class="page-item"><a class="page-link" href="paymentList?curPage=${map.pager.nextPage}">다음</a></li>
                <li class="page-item"><a class="page-link" href="paymentList?curPage=${map.pager.totPage}">끝</a></li>
            </c:if>
        </ul>
    </div>
    <div class="update-btn">
        <a href="goodsmall" class="btn btn-primary">메인</a>
    </div>
    
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>
