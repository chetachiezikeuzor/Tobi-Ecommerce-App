package com.tobi.ecommerce.controllers;

import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import com.tobi.ecommerce.services.CheckoutService;
import com.tobi.ecommerce.transfers.PaymentInfo;
import com.tobi.ecommerce.transfers.Purchase;
import com.tobi.ecommerce.transfers.PurchaseResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

    @PostMapping("/payment-intent")
    public ResponseEntity<String> createPaymentIntent(@RequestBody PaymentInfo paymentInfo) throws StripeException{
        PaymentIntent paymentIntent = checkoutService.createPaymentIntent(paymentInfo);
        String paymentStr = paymentIntent.toJson();
        return new ResponseEntity<>(paymentStr, HttpStatus.OK);
    }
}
