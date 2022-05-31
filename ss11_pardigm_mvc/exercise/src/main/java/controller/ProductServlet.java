package controller;

import model.Product;
import service.IProductManagement;
import service.ProductManagement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    private IProductManagement productManagement = new ProductManagement();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "add":
                save(request,response);
                break;
            case "edit":
                edit(request,response);
                break;
            case "delete" :
                delete(request,response);
                break;
            case "search":
                search(request,response);
                break;
            default:
               showProductList(request,response);

        }

    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String message = null;
        String name = request.getParameter("name");
        List<Product> product = productManagement.findByName(name);
        if (product.isEmpty()) {
            message = "product with name: " + name + " is not exist !";
            request.setAttribute("message", message);
        } else {
            request.setAttribute("message", null);
            request.setAttribute("productList", product);
        }
            try {
                request.getRequestDispatcher("/view/list.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }



    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int idIndex = Integer.parseInt(request.getParameter("idIndex"));
        Product product = productManagement.findById(idIndex);

        if(product == null){
            request.getRequestDispatcher("/view/error-404.jsp");
        }else {
            productManagement.remove(idIndex-1);
            request.setAttribute("message","Xoá thành công");
            try {
                request.getRequestDispatcher("view/delete.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String producer = request.getParameter("producer");
        Product product = productManagement.findById(id);
        if(product == null){
            request.getRequestDispatcher("/view/error-404.jsp");
        }else {

            product.setNameProduct(name);
            product.setPriceProduct(price);
            product.setDescriptionProduct(description);
            product.setProducer(producer);
            productManagement.update(id,product);
            request.setAttribute("productList",product);
            request.setAttribute("message","Đ ã chỉnh sửa thành công");


            try {
                response.sendRedirect("product");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String producer = request.getParameter("producer");

        Product product = new Product(id,name,price,description,producer);
        productManagement.save(product);
        request.setAttribute("mess", "Thêm mới thành công");

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/create.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "add":
                showFromCreate(request,response);
                break;
            case "edit":
                showFormUpdate(request,response);
                break;
            case "delete" :
                showFormDelete(request,response);
                break;
            case "search":
                showFormSearch(request,response);
                break;
            default:
               showProductList(request,response);

        }


    }

    private void showFormSearch(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/search.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormDelete(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/delete.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/edit.jsp");
        request.setAttribute("id", request.getParameter("id"));
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showProductList(HttpServletRequest request, HttpServletResponse response) {
        //Sẽ chuyển tới thằng list
        List<Product> productList = productManagement.findAll();
        request.setAttribute("productList",productList);
         RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showFromCreate(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/create.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
