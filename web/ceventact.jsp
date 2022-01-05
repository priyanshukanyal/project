
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String EventName = request.getParameter("Eventname");
    String Eventdate = request.getParameter("Eventdate");
    String Organiser = request.getParameter("Organiser");
    String Location = request.getParameter("Location");
   
    
    try{
       
   
    PreparedStatement ps = connection.prepareStatement("insert into event(eventname, eventdate, organiser, location) values(?,?,?,?)");

    ps.setString(1,EventName);    
    ps.setString(2,Eventdate);
    ps.setString(3,Organiser);
    ps.setString(4,Location);
    
    ps.executeUpdate();


    response.sendRedirect("cevent.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
        response.sendRedirect("cevent.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   