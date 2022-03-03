package com.tobi.ecommerce.controllers;

import com.tobi.ecommerce.models.InventoryItem;
import com.tobi.ecommerce.models.Product;
import com.tobi.ecommerce.payload.MessageResponse;
import com.tobi.ecommerce.repositories.ProductRepository;
import com.tobi.ecommerce.services.InventoryItemService;
import com.tobi.ecommerce.transfers.InventoryPass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;
import java.util.logging.Logger;

@RestController
@RequestMapping("/api/inventory")
public class InventoryController {
    private Logger logger = Logger.getLogger(getClass().getName());

    @Autowired
    InventoryItemService inventoryItemService;

    @Autowired
    ProductRepository productRepository;

    @PostMapping("/create")
    public ResponseEntity<?> createInventoryItem(@RequestBody InventoryPass inventoryPass) {
        logger.info("product--id: " + inventoryPass.getProductId());

        // initialize a new inventory item
        InventoryItem inventoryItem = new InventoryItem();

        // use the passed in product id to find the product in the database
        Optional<Product> theProduct = productRepository.findById(inventoryPass.getProductId());

        // check to see that we are not subtracting more than what is available
        if(inventoryPass.getNumProducts() <= theProduct.get().getUnitsInStock()){
            // update the stock amount of the product by subtracting passed in value
            theProduct.get().setUnitsInStock(theProduct.get().getUnitsInStock() - inventoryPass.getNumProducts());
        }else{
            return ResponseEntity.ok(new MessageResponse("Purchase cannot be made. There are only '" + theProduct.get().getUnitsInStock() + "' units left in stock."));
        }

        // set up the inventory item
        inventoryItem.setProduct(theProduct.get());
        inventoryItem.setSku(theProduct.get().getSku());
        inventoryItem.setUnitPrice(theProduct.get().getUnitPrice());
        inventoryItem.setUnitsInStock(theProduct.get().getUnitsInStock());

        // set the active status dynamically
        inventoryItemService.createInventoryItem(inventoryItem);
        if(theProduct.get().getUnitsInStock() == 0){
            theProduct.get().setActive(false);
        }

        // send a response message
        return ResponseEntity.ok(new MessageResponse("Stock amount for product '" + theProduct.get().getName() + "' has been updated."));
    }
}
