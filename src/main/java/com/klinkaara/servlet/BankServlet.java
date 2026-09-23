package com.klinkaara.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BankServlet")
public class BankServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String module = req.getParameter("module");
        
        if (module == null) module = "home";

        switch (module) {
            case "debit":
                req.setAttribute("cardType", "Debit Card");
                req.setAttribute("features", "Zero annual fees, Global access, Instant alerts.");
                req.getRequestDispatcher("cards.jsp").forward(req, resp);
                break;
            case "credit":
                req.setAttribute("cardType", "Credit Card");
                req.setAttribute("features", "5% cashback, Reward points, Fuel surcharge waiver.");
                req.getRequestDispatcher("cards.jsp").forward(req, resp);
                break;
            case "loans":
                req.setAttribute("loanTypes", new String[]{"Home Loan @ 8.5%", "Personal Loan @ 12%", "Car Loan @ 9%"});
                req.getRequestDispatcher("loans.jsp").forward(req, resp);
                break;
            default:
                resp.sendRedirect("index.jsp");
        }
    }
}
