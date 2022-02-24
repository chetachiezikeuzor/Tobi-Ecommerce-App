package com.tobi.ecommerce.controllers;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.tobi.ecommerce.services.CheckoutServiceImpl;
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
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class CheckoutControllerTest {
    @MockBean
    private CheckoutServiceImpl checkoutService;
    @InjectMocks
    CheckoutController checkoutController;
    @Autowired
    private MockMvc mockMvc;
    @BeforeEach
    void setUp() throws Exception{
        MockitoAnnotations.initMocks(this);
    }

    @Test
    @DisplayName("Should place a purchase order When making POST request to endpoint - /api/checkout/purchase")
    public void purchaseOrderTest() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        Gson gson = new Gson();

        // Reads the file from resources folder
        URL url = CheckoutControllerTest.class.getClassLoader().getResource("purchaseOrder.json");

        Purchase purchase = mapper.readValue(new File(url.getFile()), Purchase.class);
        PurchaseResponse purchaseResponse = new PurchaseResponse("12345");

        String json = gson.toJson(purchase);
        when(checkoutService.placeOrder(purchase)).thenReturn(null);

        System.out.println(json);

        mockMvc.perform(post("/api/checkout/purchase")
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(json))
                .andExpect(status().isOk());
    }
}