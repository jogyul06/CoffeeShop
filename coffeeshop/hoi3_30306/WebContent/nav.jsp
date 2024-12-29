<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<style>
		nav {
			position: fixed;
			top: 50px;
			background: gray;
			width: 100%;
			left: 0;
			height: 30px;
		}
		
		nav ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		}
		
		nav ul li {
		display: black;
		float: left;
		margin-right: 30px;
		color: black;
		}
		nav ul li a {
		display: block;
		width: 140px;
		text-decoration: none;
		color: black;
		}
</style>

<body>
	<nav>
		<ul>
				<li><a href="insert.jsp">판매등록</a></li>
				<li><a href="sale.jsp">판매현황</a></li>
				<li><a href="store.jsp">매장별판매액</a></li>
				<li><a href="product.jsp">상품별판매액</a></li>
				<li><a href="main.jsp">홈으로</a></li>
		</ul>
	</nav>
</body>
</html>