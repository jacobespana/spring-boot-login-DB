package com.capgemini.auth.service;

import com.capgemini.auth.model.User;
import com.capgemini.auth.model.Account;
import com.capgemini.auth.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import com.capgemini.auth.repository.AccountRepository;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setAccounts(new HashSet<>(accountRepository.findAll()));
        userRepository.save(user);
    }
    
    public void saveAccount(Account account) {
        
        accountRepository.save(account);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}