/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.dal;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import prj.db.DBUtil;

/**
 *
 * @author Admin
 */
public class ProductDAO {
    /**
     * This function will get the list of products that store in database
     * @return the list of products
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public List<ProductDTO> getProductList() throws SQLException, ClassNotFoundException{
        List<ProductDTO> productList = new ArrayList<>();
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try{
            con = DBUtil.getConnection();
            if(con != null){
                String query = "SELECT * FROM Product";
                stm = con.prepareStatement(query);
                rs = stm.executeQuery();
                while (rs.next()){
                    String id = rs.getString("productID");
                    String catology = rs.getString("productCatogory");
                    String name = rs.getString("productName");
                    int stock = rs.getInt("stock");
                    float listPrice = rs.getFloat("listPrice");
                    String descrip = rs.getString("description");
                    float sale = rs.getFloat("sale");
                    productList.add(new ProductDTO(id, catology, name, stock, listPrice, descrip, sale));
                }
            }
        }
        finally{
            if(rs != null) rs.close();
            if(stm != null) stm.close();
            if(con != null) con.close();
            return productList;
        }
    }
    /**
     * This function will return the list of products that contains the values from user
     * @param searchValue: the value that entered by user
     * @param productList: the list of all products needs to compare
     * @return the list of contained products
     */
    public List<ProductDTO> searchProductList(String searchValue, List<ProductDTO> productList){
        if (searchValue == null || searchValue.isEmpty())
            return productList;
        searchValue = removeAccent(searchValue);
        List<ProductDTO> searchProductList = new ArrayList<>();
        for (ProductDTO product : productList){
            if (normalizeVietnamese(product.getName()).contains(normalizeVietnamese(searchValue)))
                searchProductList.add(product);
        }
        return searchProductList;
    }
    /**
     * Convert the Non-Vietnamese format String to Vietnamese
     * @param s: the input String that java can not convert to Vietnamese
     * @return normal Vietnamese format
     */
    private String removeAccent(String s) {
        String normalString = decodeVietnamese(s);
        return normalString;
    }
    /**
     * This function will decode the String that wrong Vietnamese spell from input
     * @param encodedString the String that need to encode
     * @return the String that finished Vietnamese-decoded
     */
    private String decodeVietnamese(String encodedString) {
        String decodedString = null;
        try {
            // Convert the encoded string to bytes assuming UTF-8 encoding
            byte[] utf8Bytes = encodedString.getBytes("ISO-8859-1");

            // Convert UTF-8 bytes back to a Java String
            decodedString = new String(utf8Bytes, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return decodedString;
    }
    /**
     * This function will normalize the Vietnamese String without any stress
     * @param input: normal Vietnamese String
     * @return the String that normalized to lowercase for case-insensitive comparison
     */
    private String normalizeVietnamese(String input) {
        // Replace common diacritics with their base characters
        input = input.replaceAll("[àáảãạâầấẩẫậăằắẳẵặ]", "a");
        input = input.replaceAll("[èéẻẽẹêềếểễệ]", "e");
        input = input.replaceAll("[ìíỉĩị]", "i");
        input = input.replaceAll("[òóỏõọôồốổỗộơờớởỡợ]", "o");
        input = input.replaceAll("[ùúủũụưừứửữự]", "u");
        input = input.replaceAll("[ỳýỷỹỵ]", "y");
        input = input.replaceAll("[đ]", "d");

        
        input = java.text.Normalizer.normalize(input, java.text.Normalizer.Form.NFD);
        input = input.replaceAll("\\p{M}", ""); // Remove combining marks

        return input.toLowerCase(); 
    }
}
