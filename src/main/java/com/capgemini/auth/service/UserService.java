package com.capgemini.auth.service;

import com.capgemini.auth.model.User;
import com.capgemini.auth.model.Account;

public interface UserService {
    void save(User user);
    void saveAccount(Account account);

    User findByUsername(String username);
}