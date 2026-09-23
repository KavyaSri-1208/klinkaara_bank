<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Klinkaara Bank - Loans</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">Klinkaara Bank</div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
        </ul>
    </nav>

    <div class="container">
        <h1>Available Loans</h1>
        <ul class="loan-list">
            <c:forEach var="loan" items="${loanTypes}">
                <li>${loan} <button class="btn-small">Apply</button></li>
            </c:forEach>
        </ul>
    </div>
    
    <script src="script.js"></script>
</body>
</html>
