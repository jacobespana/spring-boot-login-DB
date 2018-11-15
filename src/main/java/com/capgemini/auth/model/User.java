package com.capgemini.auth.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user")
public class User {

    private Long id;
    private String username;
    private String firstName;
    private String lastName;
    private String DOB;
    private String phoneNumber;
    private String email;
    private String address;
    private String desiredAccountType;
    private double salary;
    private String password;
    private String passwordConfirm;
    private Set<Account> accounts;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getDesiredAccountType() {
        return desiredAccountType;
    }

    public void setDesiredAccountType(String desiredAccountType) {
        this.desiredAccountType = desiredAccountType;
    }
    
    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Transient
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    @OneToMany
    @JoinTable(name = "user_account", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "account_id"))
    public Set<Account> getAccounts() {
        return accounts;
    }

    public void setAccounts(Set<Account> accounts) {
        this.accounts = accounts;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", username=" + username + ", firstName=" + firstName + ", lastName=" + lastName + ", DOB=" + DOB + ", phoneNumber=" + phoneNumber + ", email=" + email + ", address=" + address + ", desiredAccountType=" + desiredAccountType + ", salary=" + salary + ", password=" + password + ", passwordConfirm=" + passwordConfirm + ", accounts=" + accounts + '}';
    }
    
    
}