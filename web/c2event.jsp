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
           <li><a href="studenthome.jsp" class="active">Home</a></li>
           
          
          
            <li><a href="c2event.jsp"  class="active">Create event</a></li>  
            <li><a href="v2event.jsp" >View Location</a></li>
            <li><a href="u2event.jsp" >Update event</a></li>
            <li><a href="update.jsp" >Update Profile</a></li>
             <li><a href="logout.jsp">Logout</a></li>
          
            
        </ul>
    </nav>
    <!-- Login Form -->
    <div class="form-div animated flip">
        <img src="img/user.png">
        <h2>Add Event</h2>
        <form action="c2eventact.jsp" method="post">
        <br>
        
        <input type="text" placeholder="EventName" name="Eventname" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Eventdate" name="Eventdate" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Organiser " name="Organiser" required="" autocomplete="off">
        <br>
        <input type="text" placeholder="Location " name="Location" required="" autocomplete="off">
        <br>
        
        <input type="submit" value="ADD">
        <br>
        <br>
        </form>
    </div>
    <br>
    
</body>

</html>