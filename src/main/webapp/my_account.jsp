<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file ="/include/css.jsp" %>
</head>
<body>
<%@ include file ="/include/header.jsp" %>

<div class="blog-section">
        <div class="container">
            <div class="row">
                <aside id="column-left" class="col-sm-3">
                   
                    <div class="sidebar">
                        <div class="box-content">
                            <h3 class="toggled relative">Information</h3>
                            <ul class="list-unstyled">
                                <li><a href="about.jsp" class="list-group-item">About Us</a></li>
                              
                                <li><a href="contact.jsp" class="list-group-item">Contact Us</a></li>
                                <li><a href="#" class="list-group-item">My Account</a></li>
                                  <li><a href="history.jsp" class="list-group-item">Order History</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <div id="content" class="col-sm-9  all-blog my-account">
                    <div class="breadcrumb-main">
                        <div class="breadcrumb-container clearfix">
                            <ul class="breadcrumb"> 
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="#">Account </a></li>
                              
                            </ul>
                        </div>
                    </div>
                   
                    
                    
                    
                    <div class="row"> 
                        <div class="col-sm-13">
                           
                           
                           
                            <form action="UpdateProfile" method="post">
                                <fieldset id="account">
                                    <legend>My Account</legend>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-firstname">Full Name</label>
                                        <div class="col-sm-10">
                                           <input type="text" name="name" value="<%=sess.getAttribute("name") %>" placeholder="Full Name"
                                                id="input-firstname" class="form-control">
                                        </div>
                                    </div>
                                  
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                        <div class="col-sm-10">
                                           <input type="email" name="email" value="<%=sess.getAttribute("email") %>" placeholder="E-Mail"
                                                id="input-email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                        <div class="col-sm-10">
                                           <input type="tel" name="tel" value="<%=sess.getAttribute("tel") %>" placeholder="Telephone"
                                                id="input-telephone" class="form-control">
                                        </div>
                                    </div> 
                                </fieldset>
                           <br><br>
                           <h6>Reward Points: <%=clientDAO.findByLogin((String)sess.getAttribute("email")).getPtDeFidelite() %></h6>
                           
                           
                                <div class="buttons clearfix">
                                    <div class="pull-right">
                                      
                                       <input type="submit" value="Save" class="btn btn-primary" onclick="showNotification()">

                                    </div>
                                </div>
                            </form>
                        </div>
                     
                    </div>
                    
                    
                    
                    
                </div>
            </div>
        </div>
    </div>
 
	<%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/js.jsp"%>
 

</body>

<script>
    // Function to display a notification when the form is submitted
    function showNotification() {
        alert("Profile updated successfully!"); // Basic alert notification
        // You can replace alert with a more sophisticated notification library
        // or custom HTML/CSS notification here
    }

    // Add an event listener to the form submission
    document.querySelector('form').addEventListener('submit', function(event) {
        // Prevent the default form submission behavior
        event.preventDefault();
        // Call the function to display the notification
        showNotification();
        // Submit the form programmatically
        this.submit();
    });
</script>

</html>