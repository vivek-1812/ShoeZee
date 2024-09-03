package com.example.JUIData;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DatabaseRepository 
extends JpaRepository<Customer, Integer> {
    
}
