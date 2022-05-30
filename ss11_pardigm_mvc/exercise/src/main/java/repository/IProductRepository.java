package repository;

import model.Product;
import service.ProductManagement;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();
    void save(Product product);
    List<Product> findByName(String name);
    void update(int id , Product product);
    void remove(int id);
    Product findById(int id);
}
