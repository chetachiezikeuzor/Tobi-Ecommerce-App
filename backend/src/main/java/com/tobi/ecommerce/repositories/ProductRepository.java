package com.tobi.ecommerce.repositories;

import com.tobi.ecommerce.models.Product;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.RequestParam;

@RepositoryRestResource(collectionResourceRel = "products", path = "products")
public interface  ProductRepository extends JpaRepository<Product, Long> {

    @CacheEvict(value="thirty-second-cache", key="'productCacheByCategoryId'+#id", beforeInvocation = true)
    // before the method is invoked, remove it from the cache, when the method invocation is done, the data will be cache
    // not a good solution: no condition. conditional caching is essential

    @Cacheable(value="thirty-second-cache", key="'productCacheByCategoryId'+#id")
    Page<Product> findByCategoryId(@RequestParam("id") Long id, Pageable pageable);

    @CacheEvict(value="thirty-second-cache", key="'productCacheByNameContaining'+#name", beforeInvocation = true)
    @Cacheable(value="thirty-second-cache", key="'productCacheByNameContaining'+#name")
    Page<Product> findByNameContaining(@RequestParam("name") String name, Pageable pageable);
}
