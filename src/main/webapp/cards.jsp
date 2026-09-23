<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Klinkaara Bank - ${cardType}</title>
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
        <h1>${cardType}</h1>
        <div class="card-display">
            <h3>Features:</h3>
            <p>${features}</p>
            <button class="btn" onclick="applyNow()">Apply Now</button>
        </div>
    </div>
    
    <script src="script.js"></script>
</body>
</html>
