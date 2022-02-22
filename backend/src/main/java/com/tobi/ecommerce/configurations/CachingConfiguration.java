package com.tobi.ecommerce.configurations;

import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import net.sf.ehcache.config.CacheConfiguration;

@Configuration
//enable caching
@EnableCaching
public class CachingConfiguration extends CachingConfigurerSupport {

    @Bean
    public net.sf.ehcache.CacheManager ehCacheManger(){
        CacheConfiguration tenSecondCache = new CacheConfiguration();
        tenSecondCache.setName("ten-second-cache");
        tenSecondCache.setMemoryStoreEvictionPolicy("LRU");
        tenSecondCache.setMaxEntriesLocalHeap(10000);
        tenSecondCache.setMaxEntriesLocalDisk(1000);
        tenSecondCache.setTimeToLiveSeconds(10);
        tenSecondCache.logging(true);

        CacheConfiguration twentySecondCache = new CacheConfiguration();
        twentySecondCache.setName("twenty-second-cache");
        twentySecondCache.setMemoryStoreEvictionPolicy("LRU");
        twentySecondCache.setMaxEntriesLocalHeap(10000);
        twentySecondCache.setMaxEntriesLocalDisk(1000);
        twentySecondCache.setTimeToLiveSeconds(20);
        twentySecondCache.logging(true);

        CacheConfiguration thirtySecondCache = new CacheConfiguration();
        thirtySecondCache.setName("thirty-second-cache");
        thirtySecondCache.setMemoryStoreEvictionPolicy("LRU");
        thirtySecondCache.setMaxEntriesLocalHeap(10000);
        thirtySecondCache.setMaxEntriesLocalDisk(1000);
        thirtySecondCache.setTimeToLiveSeconds(30);
        thirtySecondCache.logging(true);

        net.sf.ehcache.config.Configuration config =  new net.sf.ehcache.config.Configuration();
        config.addCache(tenSecondCache);
        config.addCache(twentySecondCache);
        config.addCache(thirtySecondCache);
        return net.sf.ehcache.CacheManager.newInstance(config);
    }

    @Bean
    @Override
    public CacheManager cacheManager(){
        return new EhCacheCacheManager(ehCacheManger());
    }

}