<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Event Management System</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Event Management System</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="studenthome.jsp" class="active">Home</a></li>
           
            <li><a href="c2event.jsp">Create event</a></li>
            <li><a href="v2event.jsp"  class="active">View Location</a></li>
            <li><a href="u2event.jsp" >Update event</a></li>
            <li><a href="update.jsp" >Update Profile</a></li>
             <li><a href="logout.jsp">Logout</a></li>
           

            
        </ul>
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
        <%
        String sql2="select eventname,location from sevent "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        <br/><br/>
         <center>
             <h2><font color="black" size="5"> Events</font></h2>
        <style>
        td{
            text-align: center;
            height: 25px;
        }
        th{
            text-align: center;
            height: 25px;
        }
           
        </style>
        <table border="2" width="90%">

        <tr style="background-color: brown">
        <th><font color="black">Event Name</th>
        <th><font color="black">Location</th>
      

        </tr>

        <%                while (rs1.next()) {
        %>

        <tr>
           
        <td><font color="black"><%=rs1.getString("eventname")%></td>
     
        <td><font color="black"><%=rs1.getString("location")%></td>
       
        </tr>
        <%
            }
        %>
        </table></center> 
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        
        
        <br/>
    <br>
    
</body>

</html>