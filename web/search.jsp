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
        <script>alert('Success..!');</script> 
        <%}%>
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Failed..!');</script> 
        <%}%>
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Event Management System</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
         <li><a href="teacherhome.jsp" >Home</a></li>
            <li><a href="logout.jsp">Logout</a></li>
            <li><a href="cevent.jsp">Create event</a></li>
           <li><a href="vevent.jsp">View event</a></li>
            <li><a href="oevent.jsp">View organizer </a></li>
            <li><a href="uevent.jsp" >Update event</a></li>
            <li><a href="Search.jsp" class="active" >Search event</a></li>

            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2>Search Event</h2>
        <form action="searchact.jsp" method="post">
        <br>
        
        <input type="text" placeholder="Search ID" name="name" required="" autocomplete="off">
        <br>
        
        
        <input type="submit" value="Search">
        <br>
        <br>
        </form>
    </div>
    <br>
    
</body>

</html>