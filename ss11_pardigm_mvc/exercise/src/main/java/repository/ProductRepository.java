package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {

    public static List<Product> products = new ArrayList<>();
      static {
          products.add(new Product(1,"Iphone",500000,"Hàng new","Iphone"));
          products.add(new Product(2,"Samsung",600000,"Hàng like new","Samsung"));
          products.add (new Product(3,"Oppo",700000,"Hàng new","Oppo"));
          products.add(new Product(4,"Vivo",800000,"Hàng new","Vivo"));
          products.add (new Product(5,"Nokia ",900000,"Hàng new","Nokia"));
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
          products.set(id,product);

    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findById(int id) {
        if(id>0&& id < products.size()){
            return products.get(id);
        }else {
            return null;
        }
    }
}
