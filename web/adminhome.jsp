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
    
    <!-- Main Header -->
    <header class="main-header">
        <center><h1>Event Management System</h1></center>
    </header>
    <!-- Dropdown Navbar -->
    <nav>
         <ul>
            <li><a href="adminhome.jsp" class="active">Home</a></li>
            <li><a href="c1event.jsp">Create event</a></li>
           <li><a href="v1event.jsp">View event</a></li>
            <li><a href="o1event.jsp">View organizer </a></li>
             <li><a href="u1event.jsp">Update Event </a></li>
              <li><a href="logout.jsp">Logout</a></li>
            
            
        </ul>
    </nav>
    <!-- Login Form -->
    <br/><br/><br/>
    <div class="form-div animated flip">
        
        <h2>Welcome Faculty</h2>
       
    </div>
    <br/><br/><br/><br/><br/> 
    <br><br>
    <br><br><br>
    <br>
    <!-- Main Footer -->
    <footer class="main-footer">
        
    </footer>
</body>

</html>