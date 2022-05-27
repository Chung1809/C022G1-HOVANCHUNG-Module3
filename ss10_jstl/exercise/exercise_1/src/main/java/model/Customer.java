package model;

import java.util.Date;

public class Customer {
    private String name;
    private String birthDay;
    private String address;
    private String customer;

    public Customer() {
    }

    public Customer(String name, String birthDay, String address, String customer) {
        this.name = name;
        this.birthDay = birthDay;
        this.address = address;
        this.customer = customer;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }
}
