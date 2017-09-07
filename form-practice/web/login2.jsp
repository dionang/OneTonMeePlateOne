
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="display-two.jsp" method="get">
            <table>
                <tr>
                    <td>Username: </td><td><input type="text" name="username" placeholder="Enter your username"></td>
                </tr>
                <tr>
                    <td>Password: </td><td><input type="password" name="password" placeholder="Enter your password"></td>
                </tr>
                <tr>
                    <td>Gender: </td><td>Male: <input type="radio" name="gender"><br>Female: <input type="radio" name="gender"></td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="cred"></td><td>Remember my credentials</td>
                </tr>
                <tr>
                    <td>Day of Week</td>
                    <td>
                        <select name="day">
                            <option value="1">Monday</option>
                            <option value="2">Tuesday</option>
                            <option value="3" selected>Wednesday</option>
                            <option>Thursday</option>
                            <option>Friday</option>
                            <option>Saturday</option>
                            <option>Sunday</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Section</td><td><input type="text" name="section"></td>
                </tr>
            </table>
            <input type="submit" value="Login">
        </form>
        
        <%
            ArrayList<String> errors = (ArrayList<String>)request.getAttribute("errors");
            if(errors != null && errors.size()>0){
                out.println("<ul style='color:red'>");
                for(String s : errors) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ul>");
            }
        %>
    </body>
   
</html>
