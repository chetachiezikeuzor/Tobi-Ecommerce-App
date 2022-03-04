package com.tobi.ecommerce.services;

import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import com.tobi.ecommerce.transfers.PaymentInfo;
import com.tobi.ecommerce.transfers.Purchase;
import com.tobi.ecommerce.transfers.PurchaseResponse;

public interface CheckoutService {
    PurchaseResponse placeOrder(Purchase purchase);
    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;
}
