<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>leeveloper</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- jquery -->
    
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<!-- swal -->
	
 <style>
      /* Colores */
:root {
    --first-color: #55bbff;
    --complementary-color: #999999;
    --white-color: #fafaff;
    --dark-color: #2a3b47;
    --text-color: #697477;
    --white-color-glass: rgba(250, 250, 255, 0.4);
}

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2; /* Add a light background color */
    color: var(--text-color);
    margin: 0; /* Remove default margin */
    padding: 0; /* Remove default padding */
}

section {
    margin-top: 110px; /* Reduce top margin */
    display: flex;
    justify-content: center;
    align-items: center; /* Center content vertically */
}

article {
    width: 60%; /* Adjust width for better responsiveness */
    max-width: 500px; /* Add maximum width */
    height: auto; /* Adjust height to auto */
    overflow: hidden; /* Change to hidden for overflow content */
    background-color: #fff; /* Add a white background */
    border-radius: 10px; /* Add rounded corners */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    padding: 20px; /* Add padding */
}

/* Update styling for ul and li */
article ul {
    list-style: none; /* Remove default list styles */
    padding: 0;
}

article ul li {
    padding: 15px 20px; /* Adjust padding */
    color: #333; /* Change text color */
    border-bottom: 1px solid #ddd; /* Add a bottom border */
}

article ul li:hover {
    background-color: #f9f9f9; /* Lighten background color on hover */
    transition: background-color 0.3s; /* Smooth transition */
}

/* Update styling for form */
form {
    width: 100%; /* Ensure form takes full width */
    padding: 20px; /* Add padding */
    background-color: #fff; /* Add a white background */
    border-radius: 10px; /* Add rounded corners */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
}

table {
    width: 100%; /* Ensure table takes full width */
    border-collapse: collapse; /* Collapse borders */
}

th, td {
    padding: 10px; /* Add padding */
    text-align: left; /* Align text to left */
    border-bottom: 1px solid #ddd; /* Add bottom border */
}

th {
    background-color: #f2f2f2; /* Add a light gray background to table headers */
}

input[type="text"], select {
    width: calc(100% - 20px); /* Adjust width */
    padding: 10px; /* Add padding */
    margin-bottom: 10px; /* Add some space between elements */
    border: 1px solid #ccc; /* Add border */
    border-radius: 5px; /* Add rounded corners */
    box-sizing: border-box; /* Include padding and border in element's total width/height */
}

input[type="submit"] {
    padding: 10px 20px; /* Add padding */
    background-color: var(--first-color); /* Use custom color variable */
    color: #fff; /* White text color */
    border: none; /* Remove border */
    border-radius: 5px; /* Add rounded corners */
    cursor: pointer; /* Add pointer cursor */
    transition: background-color 0.3s; /* Smooth transition */
}

input[type="submit"]:hover {
    background-color: #4da6ff; /* Darken background color on hover */
}

/* Update h2 styling */
h2 {
    color: var(--dark-color); /* Use custom dark color for heading */
    margin-bottom: 20px; /* Add space below heading */
}

/* Update styling for header and footer */
header, footer {
    background-color: var(--dark-color); /* Use custom dark color */
    color: #fff; /* White text color */
    padding: 20px; /* Add padding */
    text-align: center; /* Center align text */
}

/* Add media query for responsiveness */
@media (max-width: 768px) {
    article {
        width: 90%; /* Adjust width for smaller screens */
    }
}
img {
    max-width: 100%; /* Ensure image doesn't exceed its container */
    height: auto; /* Maintain aspect ratio */
    display: block; /* Prevent any default inline styling */
}

    </style>
	
</head>
<body>
	<%@ include file="../include/header.jsp"%>		
	<h2 align="center">차량 등록</h2>
	<section>
		<form method="POST" action="modifyproduct2">
			<table align="center">
				<tr>
					<th>카테고리</th>
					<td>
						<select name="cate_id" id="cate_id" >
							<option value="" selected>선택</option>
					<c:choose>							
						<c:when test="${product.cate_id eq 'IN20220926'}">
							<option value="IN20220926" selected>인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:when test="${product.cate_id eq 'SO20220926'}">
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926" selected>소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:when test="${product.cate_id eq 'JO20220926'}">
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926" selected>중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:when test="${product.cate_id eq 'DA20220926'}">
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926" selected>대형</option>
							<option value="SU20220629">SUV/RV</option>
						</c:when>
						<c:otherwise>
							<option value="IN20220926">인기차량</option>
							<option value="SO20220926">소/준중형</option>
							<option value="JO20220926">중형</option>
							<option value="DA20220926">대형</option>
							<option value="SU20220629" selected>SUV/RV</option>
						</c:otherwise>
					</c:choose>
						</select>
					</td>
				</tr>
				<input type="hidden" name="prd_id" id="prd_id" value="${product.prd_id}" />
				<tr>
					<th>모델 이름</th>
					<td>
						<input type="text" name="prd_name" id="prd_name" value="${product.prd_name}" />
					</td>
				</tr>
				<tr>
					<th>상품가격</th>
					<td>
						<input type="text" name="prd_price" id="prd_price" value="${product.prd_price}"  />
					</td>
				</tr>
				<tr>
		  			<th>이미지</th>
			    	<td>
			        	<img src="${product.prd_img}" style="max-width: 200px; height: auto;" alt="Product Image">
			    	</td>
				</tr>
				<tr>
					<th>모델 설명</th>
					<td>
						<input type="text" name="prd_explain" id="prd_explain" value="${product.prd_explain}"/>
					</td>
				</tr>
			</table>
			<hr><br>			
			<div align="center">
			<br>
				<tr>
					<td colspan="2" align="center">
						<!-- <input type="button" value="차량 등록" onclick="doModifyProduct()" style="margin-bottom: 40px;"/> -->
						<input type="submit" value="제품 수정" id="update"  style="margin-bottom: 40px;"/>
						
						<script>
						 //form 로그인 버튼
						  $("#update").click(function(){
							
							swal("","수정완료 !","success");
							location.href = 'productList';		 
						  });
						</script>
					</td>
				</tr>
			</div>
		</form>
	</section>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>