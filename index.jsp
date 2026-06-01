<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>HIT DevOps Production App</title>
</head>
<body>
    <h2>Welcome to HIT DevOps Portal! TEST</h2>

    <!-- Link Requirement -->
    <a id="info-link" href="https://www.hit.ac.il" target="_blank">Visit HIT Official Site</a>
    <br/><br/>

    <!-- Input Box and Button Requirements -->
    <form action="" method="POST">
        <label for="username">Enter Employee Name:</label>
        <input type="text" id="username" name="username" placeholder="Type here..." required>
        <button type="submit" id="submit-btn">Submit to Production</button>
    </form>

    <%
        String name = request.getParameter("username");
        if (name != null && !name.trim().isEmpty()) {
            out.print("<p id='greeting-msg'>Active Session: System deployed successfully for <strong>" + name + "</strong>!</p>");
        }
    %>
</body>
</html>