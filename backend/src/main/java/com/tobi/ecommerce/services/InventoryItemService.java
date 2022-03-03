package com.tobi.ecommerce.services;

import com.tobi.ecommerce.models.InventoryItem;
import com.tobi.ecommerce.repositories.InventoryItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InventoryItemService {
    @Autowired
    InventoryItemRepository inventoryItemRepository;

    public InventoryItem createInventoryItem(InventoryItem inventoryItem){
        return inventoryItemRepository.save(inventoryItem);
    }
}
