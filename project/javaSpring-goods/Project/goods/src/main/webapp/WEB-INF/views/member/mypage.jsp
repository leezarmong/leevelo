<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
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
    <!-- bootstrap -->
    
    
    <style>
    
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }

        .table th, .table td {
            vertical-align: middle;
            text-align: center;
        }

        .table th {
            background-color: #f2f2f2;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }

        .table-hover tbody tr:hover {
            background-color: rgba(0, 0, 0, 0.075);
        }

        .pagination {
            justify-content: center;
            margin-top: 20px;
        }

        .pagination .page-link {
            color: #007bff;
            border-color: #007bff;
        }

        .pagination .page-link:hover {
            background-color: #007bff;
            color: #fff;
        }

        .pagination .active .page-link {
            background-color: #007bff;
            border-color: #007bff;
        }
        
         /* 회원정보 수정 button */
        .update-btn {
            margin-top: 20px; /* Adjust as needed */
        }
    </style>
    
</head>
<body>

 <%@ include file="../include/header.jsp" %>
<div class="container">
    <div align="center">
        <br><br><br>
        <h2 class="my">MY PAGE</h2>
        <div class="card">
            <div class="card-header">
                <b>${member.member_name}</b>님의 주문내역입니다.
            </div>
            <div class="card-body">
                <p class="card-text">회원 가입일: ${member.member_date}</p>
                <p class="card-text">총 주문 물품개수: <b>${map.count}</b></p>
            </div>
        </div>
    </div>
    <div class="order mt-4">
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>주문날짜</th>
                    <th>수량</th>
                    <th>주소</th>
                    <th>배송상태</th>
                    <th>결제방법</th>
                    <th>상품명</th>
                    <th>가격</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty map.list}">
                        <c:forEach var="row" items="${map.list}">
                            <tr>
                                <td>${row.order_date}</td>
                                <td>${row.order_amount}</td>
                                <td>${row.member_addr}</td>
                                <td>${row.order_process}</td>
                                <td>${row.order_payment}</td>
                                <td>${row.order_name}</td>
                                <td>${row.order_sum}</td>
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
    <div class="pagination">
        <ul class="pagination">
            <c:if test="${map.pager.curBlock > 1}">
                <li class="page-item"><a class="page-link" href="mypage">처음</a></li>
                <li class="page-item"><a class="page-link" href="mypage?curPage=${map.pager.prevPage}">이전</a></li>
            </c:if>
            <c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
                <li class="page-item <c:if test='${num == map.pager.curPage}'>active</c:if>'">
                    <a class="page-link" href="mypage?curPage=${num}">${num}</a>
                </li>
            </c:forEach>
            <c:if test="${map.pager.curBlock < map.pager.totBlock}">
                <li class="page-item"><a class="page-link" href="mypage?curPage=${map.pager.nextPage}">다음</a></li>
                <li class="page-item"><a class="page-link" href="mypage?curPage=${map.pager.totPage}">끝</a></li>
            </c:if>
        </ul>
    </div>
     <div class="update-btn">
        <a href="mypage2" class="btn btn-primary">회원정보수정</a>
    </div>
</div>

<div align="center" style="margin-top: 200px;">
        <%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>