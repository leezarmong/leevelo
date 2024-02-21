<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>leeveloper</title>title>

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->

    <style>
        /* Styles for the product table */
        body {
            margin: 100;
            overflow-x: hidden;
        }

        table#product {
            margin: 0 auto; /* center the table */
            border-collapse: separate;
            width: 80%;
            padding-bottom: 50px;
        }

        table#product td {
            border: 0px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        h1 {
            text-align: center;
        }

        table#product img {
            max-width: 100%;
            height: 200;
        }

        /* Styles for the "No product details" message */
        .no-product {
            text-align: center;
            font-style: italic;
            margin-top: 20px;
        }

        /* Styles for the pager links */
        .pager {
            margin-top: 20px;
            text-align: center;
        }

        .pager a {
            display: inline-block;
            margin: 0 5px;
            padding: 5px 10px;
            border: 1px solid #ccc;
            background-color: #fff;
            color: #333;
            text-decoration: none;
        }

        .pager a:hover {
            background-color: #333;
            color: #fff;
        }

        .pager span {
            display: inline-block;
            margin: 0 5px;
            padding: 5px 10px;
            border: 1px solid #333;
            background-color: #333;
            color: #fff;
        }

        .goodsmall-section {
            font-family: Arial, sans-serif;
            background-color: #e82828;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .goodsmall-section h1 {
            font-size: 2em;
            margin: 1em 0;
            color: #6cced5;
            text-shadow: 1px 1px 2px #999;
            text-align: center;
        }


        .goodsmall-section p {
            font-size: 1.2em;
            margin: 0.5em 0;
            text-align: center;
        }

        .goodsmall-section {
            background-color: #FFF;
            padding: 1em;
            border-radius: 10px;
            box-shadow: 2px 2px 5px #999;
            margin: 1em;
        }

        .goodsmall-section p:first-of-type {
            margin-top: 0;
        }

        .goodsmall-section p:last-of-type {
            margin-bottom: 0;
        }

        .goodsmall-form {
            margin-top: 250px;
        }
		#category {
    display: flex; /* Use flexbox to create a horizontal layout */
    justify-content: center; /* Center-align the items horizontally */
    list-style-type: none; /* Remove bullet points */
    padding: 0; /* Remove default padding */
}

/* 카테고리 메뉴 */
#category li {
    margin: 0 10px; /* Add spacing between menu items */
    cursor: pointer;
    padding: 5px 10px; /* Add padding to improve clickability */
    border-radius: 5px; /* Add some rounding to the corners */
    background-color: #f5f5f5; /* Add a background color */
}

#category li:hover {
    background-color: #e0e0e0; /* Change background color on hover */
}
		.no-product {
    position: fixed; /* Set position to fixed */
    top: 50%; /* Center vertically */
    left: 50%; /* Center horizontally */
    transform: translate(-50%, -50%); /* Adjust position to center */
    text-align: center;
    font-style: italic;
    margin-top: 20px;
}
.no-product {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    font-style: italic;
    margin-top: 60px;
}

    </style>

</head>
<body>


<div class="goodsmall-form">
    <%@ include file="./include/header.jsp" %>


    <div class="goodsmall-section">
        <h1>Sombody call for an Leeveloper?</h1>
        <MARQUEE> <h2>상품 입고중 입니다. !</h2> </MARQUEE>
        
    </div>
    <table id="product">
        <!-- fn 태그, map에 list가 0이면 상품없음,컨트롤러 참고, if문 0이면 -->
        <c:if test="${(fn:length(map.list)) eq 0}">
        
        <div class="no-product" style="margin-top: 200px;">
         <h3> 메뉴 선택해주세요.!!</h3>
		</div>
      
        </c:if>
        <!-- 상품의 갯수, -1은 배열은 0부터 시작하기때문 -->
        <!-- 이중 for문 x축 -->
      <div id="category">
            <li onclick="location.href='category?cate_id=IN20220926'" class="list" data-filter="category1">인기차량</li>
            <li onclick="location.href='category?cate_id=SO20220926'" class="list" data-filter="category2">소/준중형</li>
            <li onclick="location.href='category?cate_id=JO20220926'" class="list" data-filter="category3">중형</li>
            <li onclick="location.href='category?cate_id=DA20220926'" class="list" data-filter="category4">대형</li>
            <li onclick="location.href='category?cate_id=SU20220629'" class="list" data-filter="category5">SUV/RV</li>
      </div>
        <!-- Product 의 cate_id PK 를  -->
        <!-- Product_Info 에서 cate_id FK 로 설정 하여 카테고리 경로에 따른 list 가 출력 되도록 설정. -->

        <c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}" var="row">
        <tr>
            <!-- 이중 for문 y축 -->
            <c:forEach begin="0" end="3" var="col">
                <c:set var="item" value="${map.list[row * 4 + col]}"/>
            <c:if test="${not empty item}">
            <td width="300">
                <!-- 온클릭하면 지정해준 해당 상품번호의 상품 상세 페이지로 이동 -->
                <div
                        onclick="location.href='goodsInfo?prd_id=${item.prd_id}'"
                        style="cursor: pointer">
                    <!-- 이미지 -->
                    <div>
                        <%-- <img src="${item.prd_img}" width="430" height="200"> --%>
                        <img src="${item.prd_img}">
                    </div>
                    <div>${item.prd_name}</div>
                    <div>
                        <fmt:formatNumber value="${item.prd_price}"
                                          pattern="#,###,###"/>
                        원
                    </div>
                </div>
            </td>
            </c:if>
            </c:forEach>
            </c:forEach>

    </table>


    <%@ include file="./include/footer.jsp" %>
</div>
</body>
</html>

