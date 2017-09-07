<%-- 
    Document   : displayTwo.jsp
    Created on : 31 Aug, 2017, 1:44:17 PM
    Author     : Dion
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    int section = 0;
    
    ArrayList<String> errorMsgs = new ArrayList<>();
    
    int day = Integer.parseInt(request.getParameter("day"));
    //out.println(day + "<br>");
    
    if(username == null || username.length()<=0){
        errorMsgs.add("Please enter a valid username");
    }
    
    if(password == null || password.length()<5){
        errorMsgs.add("Please enter a valid password");
    }
    
    try{
        section = Integer.parseInt(request.getParameter("section"));
        if(section < 1 || section > 9) {
            errorMsgs.add("Please enter a valid section number");
        } else {
            
        }

    } catch (NumberFormatException e) {
        errorMsgs.add("Please enter number only<br>");
    }
    
    if(errorMsgs.size()>0){
        request.setAttribute("errors", errorMsgs);
        RequestDispatcher view = request.getRequestDispatcher("login2.jsp");
        view.forward(request, response);
        //response.sendRedirect("login2.jsp");
    } else {
        out.println("Your username is " + username + "<br>");
        out.println("Your password is " + password + "<br>");
        out.println("Your section is " + section);
    }
%>
