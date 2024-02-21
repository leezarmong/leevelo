<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>leeveloper</title>
<style>
    body {
        background-color: #f5f5f5;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        width: 80%;
        max-width: 800px;
        background-color: #fff;
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    img.product-image {
        max-width: 300px; /* Increased image size */
        height: auto;
        border-radius: 4px;
    }

    .back-btn {
        background-color: #28a745; /* Green button color */
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .back-btn:hover {
        background-color: #218838; /* Darker green on hover */
    }
</style>
</head>
<body>

<div class="container">
    <h1>굿즈 상세 정보</h1>
    <table>
        <tr>
            <th>Product</th>
            <th>ID</th>
            <th>Product Type</th>
            <th>Price</th>
        </tr>
        <tr>
            <td><img class="product-image" src="${goods.prd_img}" alt="Product Image"></td>
            <td>${pageinfo.member_id}</td>
            <td>${pageinfo.basket_sum}</td>
            <td>${pageinfo.basket_amount}</td>
        </tr>
    </table>
    <button class="back-btn" onclick="location.href='basketlist'">뒤로가기</button>
</div>

</body>
</html>
