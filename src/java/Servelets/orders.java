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
public class orders {
    
    private int oid;
    private int PID;
    private String Billing_Address;
    private int Quantity;
    private String Mobile;
    private String Email;
    private double price;

    public orders(int oid, int PID, String Billing_Address, int Quantity, String Mobile, String Email, double price) {
        this.oid = oid;
        this.PID = PID;
        this.Billing_Address = Billing_Address;
        this.Quantity = Quantity;
        this.Mobile = Mobile;
        this.Email = Email;
        this.price = price;
    }

    orders() {
        
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public int getOid() {
        return oid;
    }

    public int getPID() {
        return PID;
    }

    public String getBilling_Address() {
        return Billing_Address;
    }

    public int getQuantity() {
        return Quantity;
    }

    public String getMobile() {
        return Mobile;
    }

    public String getEmail() {
        return Email;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }

    public void setBilling_Address(String Billing_Address) {
        this.Billing_Address = Billing_Address;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
    
}
