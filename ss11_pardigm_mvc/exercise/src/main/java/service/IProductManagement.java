package service;

import model.Product;

import java.util.List;
import java.util.Map;

public interface IProductManagement {
    List<Product> findAll();
    void save(Product product);
    List<Product> findByName(String name);
    void update(int id , Product product);
    void remove(int id);
    Product findById(int id);
}