<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Event Management System</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>

<body>
    
        <%
        if (request.getParameter("msg") != null) {%>
        <script>alert('Login Success..!');</script> 
        <%}%>
    
    <header class="main-header">
        <center><h1>Event Management System</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
        <ul> <li>
                <a href="studenthome.jsp" class="active">Home</a></li>
          
            <li><a href="c2event.jsp">Create event</a></li>
            <li><a href="v2event.jsp" >View Location</a></li>
            <li><a href="u2event.jsp" >Update event</a></li>
            <li><a href="update.jsp" >Update Profile</a></li>
              <li><a href="logout.jsp">Logout</a></li>
            
            
        </ul>
    </nav>
    <!-- Login Form -->
    <br/><br/><br/>
    <div class="form-div animated flip">
        <%
        String user = session.getAttribute("user").toString();
        %>
        <h2>Welcome <%=user%></h2>
       
    </div>
    <br/><br/><br/><br/><br/> 
    <br><br>
    <br><br><br>
    <br>
   
</body>

</html>