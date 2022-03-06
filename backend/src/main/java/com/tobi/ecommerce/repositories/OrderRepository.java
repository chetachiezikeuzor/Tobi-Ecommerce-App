package com.tobi.ecommerce.repositories;

import com.tobi.ecommerce.models.Order;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface OrderRepository extends JpaRepository<Order, Long> {

    @CacheEvict(value="thirty-second-cache", key="'orderByCustomerEmailOrderByDateCreatedDesc'+#email", beforeInvocation = true)
    @Cacheable(value="thirty-second-cache", key="'orderByCustomerEmailOrderByDateCreatedDesc'+#email")
    Page<Order> findByCustomerEmailOrderByDateCreatedDesc(@Param("email") String email, Pageable pageable);
}
