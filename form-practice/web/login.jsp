<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%
    ArrayList<String> errors = (ArrayList<String>)request.getAttribute("errors");
    if(errors!=null){
        for(String s : errors) {
            out.println(s + "<br>");
        }
    }
%>

<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="display.jsp" method="get">
            <table>
                <tr>
                    <td>
                        Username:
                    </td>
                    <td>
                        <input type="text" name="username" placeholder="Enter your username">
                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <input type="password" name="password">
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender:
                    </td>
                    <td>
                        Male: <input type="radio" name="gender" checked><br>Female: <input type="radio" name="gender">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox">
                    </td>
                    <td>
                        Remember my credentials
                    </td>
                </tr>
            </table>
            
            Section: <select name="section">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option selected>5</option>
                <option>6</option>
                <option>7</option>
            </select><br>
            
            Seat Number: <input type="text" name="seatNo">
            
            <br><input type="submit" value="Login!"><br>
        </form>
    </body>
</html>
