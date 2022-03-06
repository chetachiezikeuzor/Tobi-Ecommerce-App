package com.tobi.ecommerce.repositories;

import com.tobi.ecommerce.models.InventoryItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

public interface InventoryItemRepository extends JpaRepository<InventoryItem, Integer> {
}
