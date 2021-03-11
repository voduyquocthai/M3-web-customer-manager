package service;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public interface CustomerService {

    List<Customer> findAll();

    void save(Customer customer);

    Customer findById(int id);

    ArrayList<Customer> findByName(String name);

    void update(Customer customer);

    void remove(int id);
}
