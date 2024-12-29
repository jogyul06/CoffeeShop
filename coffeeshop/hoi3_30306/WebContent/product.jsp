<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>
<%@include file="footer.jsp"%>


<style>
section {
    position: absolute;
    top: 80px;
    left: 50%;
    transform: translateX(-50%);
    text-align: center;
}
table {
    text-align: left;
}
</style>

<%


DecimalFormat info = new DecimalFormat("###,###");
ResultSet rs = null;

Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");

String sql = "select p.pcode, p.name, sum(p.cost * s.amount) as tot from tbl_product_02 p, tbl_salelist_02 s where p.pcode = s.pcode group by p.pcode, p.name order by p.pcode asc";

PreparedStatement pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

%>
<section>
	<h2>
		상품별 판매액
	</h2>
	<table border=1>
		<tr>
			<td>상품코드</td>
			<td>상품명</td>
			<td>상품별 판매액</td>
		</tr>


		<%
			while (rs.next()) {		
				 String in = info.format(rs.getInt(3));
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
            <td><%=in%></td>
		</tr>
		<%
			}
		%>
	</table>
</section>