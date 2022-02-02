package com.tobi.ecommerce.controllers;

import com.tobi.ecommerce.services.CheckoutService;
import com.tobi.ecommerce.transfers.Purchase;
import com.tobi.ecommerce.transfers.PurchaseResponse;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/checkout")
public class CheckoutController {
    private CheckoutService checkoutService;

    public CheckoutController(CheckoutService checkoutService){
        this.checkoutService = checkoutService;
    }

    @PostMapping("/purchase")
    public PurchaseResponse placeOrder(@RequestBody Purchase purchase){
        PurchaseResponse purchaseResponse = checkoutService.placeOrder(purchase);

        return purchaseResponse;
    }
}
