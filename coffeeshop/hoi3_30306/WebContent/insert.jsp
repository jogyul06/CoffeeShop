<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
section {
    position: absolute;
    top: 80px;
    left: 50%;
    transform: translateX(-50%);
    text-align: center;
}
</style>

	<%@include file = "header.jsp" %>
	<%@include file = "nav.jsp" %>
	<%@include file = "footer.jsp" %>
	
</head>

<body>
    <section>
        <h2 align="center">판매등록</h2>
        <form action="insert_confirm.jsp" name="form">
            <table border="1">
					<tr>
						<td>비번호 </td>
						<td><input type="text" name="saleno"></td>
						</tr>
						<tr>
						<td>상품코드</td>
						<td><input type="text" name="pcode"></td>
						</tr>
						<tr>
						<td>판매날짜</td>
						<td><input type="text" name="saledate"></td>
						</tr>
						<tr>
						<td>매장코드</td>
						<td><input type="text" name="scode"></td>
						</tr>
						<tr>
						<td>판매수량</td>
						<td><input type="text" name="amount"></td>
						</tr>
						
						<tr>
						<td colspan="2" align="center">
							<input type="submit" value="등록" name="submit"> 
							<input type="reset" value="다시쓰기">
					</tr>
				</table>
			</form>
	</section>
</body>
</html>