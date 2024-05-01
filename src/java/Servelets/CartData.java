/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

/**
 *
 * @author laksh
 */
public class CartData extends ProductData {
    
    private int quentity;

    public CartData(int PID, String P_Name, int P_Quantity, String P_description, String p_image) {
        super(PID, P_Name, P_Quantity, P_description, p_image);
    }

   

    public CartData() {
    }

    public CartData(int quentity) {
        this.quentity = quentity;
    }

   

    public void setQuentity(int quentity) {
        this.quentity = quentity;
    }

    public int getQuentity() {
        return quentity;
    }
    
    
    
}
