

package com.example.JUIData;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.GenerationType;


@Entity
public class Address {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;
    private long contact;
    private String address;
    private String city;
    private String pincode;

    // Constructors
    public Address() {
    }

    public Address(String name, String email, long contact, String address, String city, String pincode) {
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.address = address;
        this.city = city;
        this.pincode = pincode;
    }

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getContact() {
        return contact;
    }

    public void setContact(long contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    // toString method
    @Override
    public String toString() {
        return "Address [id=" + id + ", name=" + name + ", email=" + email + ", contact=" + contact + ", address="
                + address + ", city=" + city + ", pincode=" + pincode + "]";
    }
}