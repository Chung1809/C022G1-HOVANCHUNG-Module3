package controllor;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "Customer", urlPatterns = "/Customer")
public class CustomerList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer[] customers = new model.Customer[5];
        customers[0] = new Customer("Chung","20-05-1999","Da Nang","img/1.jpg");
        customers[1] = new Customer("Nam","20-06-1999","Quang NaM","img/2.jpg");
        customers[2] = new Customer("Anh","20-07-1999","Ha Nam","img/3.jpg");
        customers[3] = new Customer("Hoang","20-08-1999","Thai Nguyen","img/4.jpg");
        customers[4] = new Customer("Dat","20-09-1999","Quang Tri","img/5.jpg");
                request.setAttribute("customerList",customers);
        request.getRequestDispatcher("list.jsp").forward(request,response);
    }
}
