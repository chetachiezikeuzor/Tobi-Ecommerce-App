package com.tobi.ecommerce.repositories;

import com.tobi.ecommerce.models.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    Customer findByEmail(String theEmail);
}
