package com.tobi.ecommerce.transfers;

import lombok.Data;

@Data
public class InventoryPass {
    private Long productId;
    private int numProducts;
}
