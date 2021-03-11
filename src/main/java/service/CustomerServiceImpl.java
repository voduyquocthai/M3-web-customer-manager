package service;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    private static  List<Customer> customerList;

    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer(1, "Leanne Graham", "Bret", "Sincere@april.biz", "Apt. 556"));
        customerList.add(new Customer(2, "Dan", "James", "Sincere@april.net", "Apt. 236"));
        customerList.add(new Customer(3, "Jack", "Lee", "Sincere@april.vn", "Apt. 576"));
        customerList.add(new Customer(4, "Stone", "Sarah", "Sincere@april.com", "Apt. 96"));
    }

    @Override
    public List<Customer> findAll() {
        return customerList;
    }

    @Override
    public void save(Customer customer) {
        customerList.add(customer);
    }

    @Override
    public Customer findById(int id) {
        Customer customer = null;
        for (Customer c: customerList) {
            if(c.getId() == id){
                customer = c;
            }
        }
        return customer;
    }

    @Override
    public void update(Customer customer) {
        for (Customer c: customerList) {
            if(c.getId() == customer.getId()){
                c.setName(customer.getName());
                c.setUserName(customer.getUserName());
                c.setEmail(customer.getEmail());
                c.setAddress(customer.getAddress());
            }
        }
    }

    @Override
    public void remove(int id) {
        customerList.removeIf(c -> c.getId() == id);
    }

    @Override
    public ArrayList<Customer> findByName(String name) {
        ArrayList<Customer> customerResult = new ArrayList<>();
        for (Customer c: customerList) {
            if(c.getName().contains(name)){
                customerResult.add(c);
            }
        }
        return customerResult;
    }
}
