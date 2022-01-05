
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

    <%



    String name = request.getParameter("name");

  
    String sql2="select * from event where eventname = '"+name+"'"; 
Statement st2=connection.createStatement();
ResultSet rs1=st2.executeQuery(sql2);
 // response.sendRedirect("search.jsp?msg=success");
    
    
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

    
   