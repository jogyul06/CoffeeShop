<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<meta charset="UTF-8">
<% 
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	String sql = "INSERT INTO tbl_salelist_02 values(?, ?, ?, ?, ?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, request.getParameter("saleno"));
	pstmt.setString(2, request.getParameter("pcode"));
	pstmt.setString(3, request.getParameter("saledate"));
	pstmt.setString(4, request.getParameter("scode"));
	pstmt.setString(5, request.getParameter("amount"));
	
	pstmt.executeUpdate();
	
	response.sendRedirect("insert.jsp");	
%>