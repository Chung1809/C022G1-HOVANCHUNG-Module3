package service.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
    boolean update( Customer customer);
    void save(Customer customer);
    boolean delete(int id);
    List<Customer> search( String name);
}
