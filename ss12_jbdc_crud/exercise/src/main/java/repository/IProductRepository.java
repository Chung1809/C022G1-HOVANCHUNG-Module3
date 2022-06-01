package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll() ;
    void save(Product product);
    boolean remove(int id);
    List<Product> search(String name);
    boolean update( Product product);

}
