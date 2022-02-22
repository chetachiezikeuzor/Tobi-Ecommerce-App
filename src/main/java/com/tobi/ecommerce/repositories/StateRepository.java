package com.tobi.ecommerce.repositories;

import com.tobi.ecommerce.models.State;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

@RepositoryRestResource(collectionResourceRel = "states", path = "states")
public interface StateRepository extends JpaRepository<State, Integer> {

    @CacheEvict(value="thirty-second-cache", key="'stateByCountryCode'+#code", beforeInvocation = true)
    @Cacheable(value="thirty-second-cache", key="'stateByCountryCode'+#code")
    List<State> findByCountryCode(@Param("code") String code);
}
