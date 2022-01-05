
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>


    <%
    String OldEventName = request.getParameter("EventnameOld");
    String EventName = request.getParameter("Eventname");
    String Eventdate = request.getParameter("Eventdate");
    String Organiser = request.getParameter("Organiser");
    String Location = request.getParameter("Location");
   
    
    try{
       
   
  
 
    PreparedStatement ps = connection.prepareStatement("update event set eventname='"+EventName+"',eventdate='"+Eventdate+"',organiser='"+Organiser+"',location='"+Location+"' where eventname = '"+OldEventName+"'");
    ps.executeUpdate();

    response.sendRedirect("uevent.jsp?msg=success");
    
    }
    catch(Exception e1)
    {
        response.sendRedirect("uevent.jsp?m1=Failed");
    out.println(e1.getMessage());
    }


    %>

    
   