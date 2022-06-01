package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepository;

import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
     private IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void save(Product product) {
         productRepository.save(product);

    }

    @Override
    public boolean remove(int id) {
      return  productRepository.remove(id);

    }

    @Override
    public List<Product> search(String name) {
        return productRepository.search(name);
    }

    @Override
    public boolean update( Product product) {
      return productRepository.update(product);
    }


}
