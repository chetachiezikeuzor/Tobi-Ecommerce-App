package com.tobi.ecommerce.services;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.tobi.ecommerce.controllers.CheckoutControllerTest;
import com.tobi.ecommerce.models.Customer;
import com.tobi.ecommerce.models.Order;
import com.tobi.ecommerce.models.OrderItem;
import com.tobi.ecommerce.repositories.CustomerRepository;
import com.tobi.ecommerce.transfers.Purchase;
import com.tobi.ecommerce.transfers.PurchaseResponse;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.io.File;
import java.net.URL;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class CheckoutServiceImplTest {
    @MockBean
    private CustomerRepository customerRepository;
    @InjectMocks
    CheckoutServiceImpl checkoutService;
    @Autowired
    MockMvc mockMvc;
    OrderItem item;
    String theEmail = "a@a.com";

    @BeforeEach
    void setUp() throws Exception{
        MockitoAnnotations.initMocks(this);
    }

    @Test
    @DisplayName("Should receive all order information and assign information to order and generate order number")
    public void placeOrderTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        Gson gson = new Gson();

        // Reads the file from resources folder
        URL url = CheckoutServiceImplTest.class.getClassLoader().getResource("purchaseOrder.json");

        Purchase purchase = mapper.readValue(new File(url.getFile()), Purchase.class);
        Customer customer = purchase.getCustomer();
        Customer customerFromDB = customerRepository.findByEmail(theEmail);
        // Purchase purchase;
        PurchaseResponse purchaseResponse = new PurchaseResponse("12345");

        String json = gson.toJson(purchase);
        System.out.println(customerRepository.findByEmail(theEmail));

        when(customerRepository.findByEmail(theEmail)).thenReturn(null);
        // when(customerRepository.getOrder().add(item);

        //System.out.println(theEmail);
        customer = customerFromDB;

        mockMvc.perform(post("/api/checkout/purchase")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(json))
                .andExpect(status().isOk());
    }
}