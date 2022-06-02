package service.customer;

import model.customer.Customer;
import repository.customer.CustomerRepository;
import repository.customer.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public boolean update(Customer customer) {
        return false;
    }

    @Override
    public void save(Customer customer) {
       customerRepository.save(customer);
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
