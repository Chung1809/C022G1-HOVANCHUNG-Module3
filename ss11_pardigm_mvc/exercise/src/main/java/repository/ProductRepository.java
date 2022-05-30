package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {

    public static List<Product> products = new ArrayList<>();
      static {
          products.add(new Product(1,"Áo",500000,"Hàng new","Nike"));
          products.add(new Product(2,"Quần",600000,"Hàng like new","Nike"));
          products.add (new Product(3,"Bánh kẹo",700000,"Hàng new","Thăng Long"));
          products.add(new Product(4,"Sữa",800000,"Hàng new","Cô gái Hà Lan"));
          products.add (new Product(5,"Giày ",900000,"Hàng new","Nike"));
      }


    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
         products.add(product);
    }

    @Override
    public List<Product> findByName(String name) {
          List<Product> productList = new ArrayList<>();
        for (Product item: products) {
            if(item.getNameProduct().contains(name)){
                productList.add(item);
            }
        }
        return productList;
    }

    @Override
    public void update(int id, Product product) {
          products.add(id,product);

    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        return findAll().get(id);
    }
}
