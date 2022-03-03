package com.tobi.ecommerce.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Data
@Entity
@Table(name="inventory")
public class InventoryItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name="product_id")
    @JsonIgnore
    private Product product;

    @Column(name = "sku")
    private String sku;

    public String getSku() {
        return sku;
    }

    public void setSku(String productSku) {
        productSku = product.getSku();
        this.sku = productSku;
    }

    @Column(name = "unit_price")
    private BigDecimal unitPrice;

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal productUnitPrice) {
        productUnitPrice = product.getUnitPrice();
        this.unitPrice = productUnitPrice;
    }

    @Column(name = "units_in_stock")
    private int unitsInStock;

    public int getUnitsInStock() {
        return unitsInStock;
    }

    public void setUnitsInStock(int productUnitsInStock) {
        productUnitsInStock = product.getUnitsInStock();
        this.unitsInStock = productUnitsInStock;
    }

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "last_updated")
    @UpdateTimestamp
    private Date lastUpdated;
}
