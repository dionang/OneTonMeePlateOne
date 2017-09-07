<%--  
    Document   : display
    Created on : 28 Aug, 2017, 4:29:46 PM
    Author     : Dion
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    //out.println("Username: " + username);
    String password = request.getParameter("password");
    //out.println("Password: " + password);
    int section = Integer.parseInt(request.getParameter("section"));
    
    ArrayList<String> errorMsgs = new ArrayList<>();
    if(username == null || username.length() == 0){
        errorMsgs.add("Username cannot be empty");
    }
    
    if(password == null || password.length() == 0){
        errorMsgs.add("Password cannot be empty");
    }
    
    try {
       int seatNo = Integer.parseInt(request.getParameter("seatNo"));
       if(seatNo < 1 || seatNo > 30) {
           errorMsgs.add("Invalid seat number!");
       } else {
          // errorMsgs.add("Your seat is " + seatNo);
       }
       
    } catch (NumberFormatException e) {
        errorMsgs.add("Invalid input");
    }
    
    /*for(String s : errorMsgs){
        out.println(s + "<br>");
    }*/
    if(errorMsgs.size()>0){
        request.setAttribute("errors", errorMsgs);
        RequestDispatcher view = request.getRequestDispatcher("login.jsp");
        view.forward(request, response);
    }
    
    out.println("login success");
    
%>


