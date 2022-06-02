package repository.customer;

import model.customer.Customer;
import repository.BaseRepository;
import service.customer.CustomerService;
import service.customer.ICustomerService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {

    private final String INSERT_PRODUCT = "insert into customer(customer_type_id,customer_name,customer_birthday," +
            "customer_gender,customer_id_card,customer_phone,customer_email,customer_address)values(?,?,?,?,?,?,?,?)";
    private final String SELECT_ALL = "select*from customer;";

    @Override
    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int id = Integer.parseInt(resultSet.getString("customer_id"));
                int type_id = Integer.parseInt(resultSet.getString("customer_type_id"));
                String name = resultSet.getString("customer_name");
                String birthday = resultSet.getString("customer_birthday");
                Boolean gender = Boolean.parseBoolean(resultSet.getString("customer_gender"));
                String card = resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_address");
                Customer customer = new Customer(id, type_id, name, birthday, gender, card, phone, email, address);
                customers.add(customer);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean update(Customer customer) {

        return false;
    }

    @Override
    public void save(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_PRODUCT);
            ps.setInt(1, customer.getTypeCustomer());
            ps.setString(2, customer.getName());
            ps.setString(3, customer.getBirthday());
            ps.setBoolean(4, Boolean.parseBoolean(customer.getBirthday()));
            ps.setString(5, customer.getCard());
            ps.setString(6, customer.getPhone());
            ps.setString(7, customer.getEmail());
            ps.setString(8, customer.getAddress());
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public List<Customer> search(String name) {
        return null;
    }
}
