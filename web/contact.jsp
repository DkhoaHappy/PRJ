<%-- 
    Document   : contactUs
    Created on : Jun 29, 2024, 7:31:55 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/styleContact.css">
        <link rel="icon" href="images/logo.png"/>
        <title>Contact Us</title>
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="home.jsp"><img src="images/logo.png" alt=""></a>
            </div>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="aboutUs.jsp">About Us</a></li>
                    <li><a href="contactUs.jsp" class="active">Contact</a></li>
                    <li><a href="profile.jsp">Profile</a></li>
                </ul>
            </nav>
        </header>

        <div class="section">
            <div class="container">
                <div class="title">
                    <h1>Contact Us</h1>
                </div>
                <div class="contact_form">
                    <form action="submitContactForm.jsp" method="post">
                        <div class="form_group">
                            <label for="name">Name:</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form_group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form_group">
                            <label for="message">Message:</label>
                            <textarea id="message" name="message" rows="5" required></textarea>
                        </div>
                        <div class="form_group">
                            <button type="submit">Submit</button>
                        </div>
                    </form>
                </div>
                <div class="map_section">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6100105370224!2d106.80730807593318!3d10.841127589311606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2sFPT%20University%20HCMC!5e0!3m2!1sen!2s!4v1719667133647!5m2!1sen!2s" width="1200" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>

        <footer>
            <div class="footer_content">
                <p>&copy; 2024 Premium Royal Jewelry. All Rights Reserved.</p>
            </div>
        </footer>
    </body>
</html>
