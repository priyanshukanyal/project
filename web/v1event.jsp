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
         <li><a href="adminhome.jsp">Home</a></li>
            <li><a href="c1event.jsp">Create event</a></li>
           <li><a href="v1event.jsp" class="active">View event</a></li>
            <li><a href="o1event.jsp">View organizer </a></li>
             <li><a href="u1event.jsp">Update Event </a></li>
              <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </nav>
    <!-- Login Form -->
    <%@page import="java.sql.*"%>
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>
    
        <%
        String sql2="select eventname, eventdate,location from aevent "; 
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
        <th><font color="black">Event date</th>
        <th><font color="black">Location</th>
      

        </tr>

        <%                while (rs1.next()) {
        %>

        <tr>
           
        <td><font color="black"><%=rs1.getString("eventname")%></td>
        <td><font color="black"><%=rs1.getString("eventdate")%></td>
     
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