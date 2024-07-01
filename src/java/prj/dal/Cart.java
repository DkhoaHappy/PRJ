/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.dal;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Cart extends ArrayList<ProductDTO>{
    public Cart(){
        super();
    }
    
    public boolean addToCart(String product){
//        ProductDTO p=p.setQuantity(p.getQuantity()+1);
        return true;
    }
}
