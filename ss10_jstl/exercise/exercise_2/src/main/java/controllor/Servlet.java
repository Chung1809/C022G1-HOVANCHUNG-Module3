package controllor;

import model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlet" , urlPatterns = "/calculator")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          double firstOperand = Double.parseDouble(request.getParameter("first-operand"));
          double secondOperand = Double.parseDouble(request.getParameter("second-operand"));
          char operator = request.getParameter("operator").charAt(0);
         try{
             request.setAttribute("First Operand",firstOperand);
             request.setAttribute("Second Operand",secondOperand);
             double calculator = Calculator.calculator(firstOperand,secondOperand,operator);
             request.setAttribute("Calculator",calculator);
             request.getRequestDispatcher("calculator.jsp").forward(request,response);
         }catch (Exception e){
             e.getMessage();
         }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
