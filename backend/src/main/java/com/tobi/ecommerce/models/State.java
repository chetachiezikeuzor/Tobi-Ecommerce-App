package com.tobi.ecommerce.models;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="states")
@Data
public class State {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="name")
    private String name;

    @ManyToOne
    @JoinColumn(name="country_id")
    private Country country;
}
