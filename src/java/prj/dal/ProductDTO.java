/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.dal;

/**
 *
 * @author Admin
 */
public class ProductDTO {
    private String id;
    private String catology;
    private String name;
    private int quantity;
    private float listPrice;
    private String description;
    private float sale;

    public ProductDTO(String id, String catology, String name, int quantity, float listPrice, String description, float sale) {
        this.id = id;
        this.catology = catology;
        this.name = name;
        this.quantity = quantity;
        this.listPrice = listPrice;
        this.description = description;
        this.sale = sale;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCatology() {
        return catology;
    }

    public void setCatology(String catology) {
        this.catology = catology;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getListPrice() {
        return listPrice;
    }

    public void setListPrice(float listPrice) {
        this.listPrice = listPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getSale() {
        return sale;
    }

    public void setSale(float sale) {
        this.sale = sale;
    }

   
    
}
