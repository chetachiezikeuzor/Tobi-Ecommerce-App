package com.tobi.ecommerce.transfers;

import com.tobi.ecommerce.models.Address;
import com.tobi.ecommerce.models.Customer;
import com.tobi.ecommerce.models.Order;
import com.tobi.ecommerce.models.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {
    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
