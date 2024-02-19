package alabs.homework.entity;

import java.time.Instant;
import java.util.Date;

public class Product {
    private final Long id;
    private String name;
    private String description;
    private final Date expirationDate;

    public Product(long id, String name, String description, Date expiration) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.expirationDate = expiration;
    }
    public Product(long id, String name, String description){
        this.id = id;
        this.name = name;
        this.description = description;
        this.expirationDate = Date.from(Instant.ofEpochSecond(System.currentTimeMillis()));
    }
    public Product(long id){
        this.id = id;
        this.expirationDate = Date.from(Instant.ofEpochSecond(System.currentTimeMillis()));
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }
}
