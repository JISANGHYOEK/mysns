<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.EnquiryDAO" %>
<% 
	request.setCharacterEncoding("utf-8");

	String uid = request.getParameter("id");
	String ucon = request.getParameter("content");
	
	EnquiryDAO dao = new EnquiryDAO();
	
	if(dao.insert(uid, ucon)){
		out.print("OK");
	}
	else {
		out.print("ER");
	}
	
%>