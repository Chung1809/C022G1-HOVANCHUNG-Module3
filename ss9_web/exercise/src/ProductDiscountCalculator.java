import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculator" , urlPatterns = "/Calculator")
public class ProductDiscountCalculator extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String product = request.getParameter("product");
       double price = Double.parseDouble(request.getParameter("price"));
       double percent = Double.parseDouble(request.getParameter("percent"));
       double amount = price*percent*0.01;
       double discountPrice = price-(percent/100*price);
        PrintWriter printWriter = response.getWriter();
        printWriter.println("Product :" + product);
        printWriter.println("Price :" + price);
        printWriter.println("Discount Percent :" + percent);
        printWriter.println("Discount Amount :" + amount);
        printWriter.println("Discount Price :" + discountPrice);



    }
}
