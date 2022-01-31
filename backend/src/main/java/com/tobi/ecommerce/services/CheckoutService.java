package com.tobi.ecommerce.services;

import com.tobi.ecommerce.transfers.Purchase;
import com.tobi.ecommerce.transfers.PurchaseResponse;

public interface CheckoutService {
    PurchaseResponse placeOrder(Purchase purchase);
}
