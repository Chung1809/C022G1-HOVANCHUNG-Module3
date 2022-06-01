package repository;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {

    private final String SELECT_ALL = "select*from product";
    private final String INSERT_PRODUCT = "insert into product(name,price,description,producer) values(?,?,?,?)";
    private final String DELETE_PRODUCT = "delete from product where id = ?";
    private final String SEARCH_PRODUCT = "select id,name,price,description,producer from product where name like ?";
    private final String UPDATE_PRODUCT = "update product set name =? ,price = ?,description =?,producer = ? where id =?";


    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
            try {
                PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
                ResultSet resultSet = ps.executeQuery();
                while (resultSet.next()){
                     int id = resultSet.getInt("id");
                     String name = resultSet.getString("name");
                     double price = resultSet.getDouble("price");
                     String description = resultSet.getString("description");
                     String producer = resultSet.getString("producer");

                     Product product = new Product(id,name,price,description,producer);
                     productList.add(product);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            return productList;

    }

    @Override
    public void save(Product product) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_PRODUCT);
            ps.setString(1,product.getNameProduct());
            ps.setDouble(2,product.getPriceProduct());
            ps.setString(3,product.getDescriptionProduct());
            ps.setString(4,product.getProducer());
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public boolean remove(int id) {
        boolean remove = false;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE_PRODUCT);
            ps.setInt(1,id);
            remove =ps.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return remove;

    }

    @Override
    public List<Product> search(String name) {
        List<Product> productList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {

            PreparedStatement ps = connection.prepareStatement(SEARCH_PRODUCT);
            ps.setString(1,"%"+name+"%");
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name1 = resultSet.getString("name");
                Double price = resultSet.getDouble("price");
                String description = resultSet.getString("description");
                String producer = resultSet.getString("producer");
                productList.add(new Product(id,name1,price,description,producer));

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productList;
    }

    @Override
    public boolean update( Product product) {
        boolean row = false;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_PRODUCT);
            ps.setString(1,product.getNameProduct());
            ps.setDouble(2,product.getPriceProduct());
            ps.setString(3,product.getDescriptionProduct());
            ps.setString(4,product.getProducer());
            ps.setInt(5,product.getId());
            row = ps.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
         return row;
    }


}
