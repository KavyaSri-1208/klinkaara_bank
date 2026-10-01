<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Klinkaara Bank - Home</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">Klinkaara Bank</div>
        <ul class="nav-links">
            <li><a href="BankServlet?module=debit">Debit Cards</a></li>
            <li><a href="BankServlet?module=credit">Credit Cards</a></li>
            <li><a href="BankServlet?module=loans">Loans</a></li>
        </ul>
    </nav>

    <div class="hero">
        <h1>Welcome to Klinkaara Bank</h1>
        <p>Your financial partner for a secure future.</p>
        <div class="services">
            <div class="card">
                <h3>Debit Cards</h3>
                <p>Manage your daily expenses seamlessly.</p>
                <a href="BankServlet?module=debit" class="btn">View Cards</a>
            </div>
            <div class="card">
                <h3>Credit Cards</h3>
                <p>Unlock rewards and flexibility.</p>
                <a href="BankServlet?module=credit" class="btn">View Cards</a>
            </div>
            <div class="card">
                <h3>Loans</h3>
                <p>Low interest rates for your dreams.</p>
                <a href="BankServlet?module=loans" class="btn">Apply Now</a>
            </div>
        </div>
    </div>
    
    <script src="script.js"></script>
</body>
</html>
