package service;

import model.Product;

import java.util.List;
import java.util.Map;

public interface IProductService {
    List<Product> findAll() ;
    void save(Product product);
    boolean remove(int id);
    List<Product> search(String name);
    boolean update( Product product);


}
