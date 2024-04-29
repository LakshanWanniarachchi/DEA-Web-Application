
package Servelets;

/**
 *
 * @author laksh
 */
public class ProductData {
    
    private int PID ;
    private String P_Name;
    private int P_Quantity;
    private String P_description;
    private int P_Price;
    private String p_image;

    public ProductData(int PID, String P_Name, int P_Quantity, String P_description , String p_image) {
        this.PID = PID;
        this.P_Name = P_Name;
        this.P_Quantity = P_Quantity;
        this.P_description = P_description;
        this.p_image = p_image;
    }

    public String getP_image() {
        return p_image;
    }

    public void setP_image(String p_image) {
        this.p_image = p_image;
    }

    public ProductData() {
    }

    public int getPID() {
        return PID;
    }

    public String getP_Name() {
        return P_Name;
    }

    public int getP_Quantity() {
        return P_Quantity;
    }

    public String getP_description() {
        return P_description;
    }

    public int getP_Price() {
        return P_Price;
    }

    public void setPID(int PID) {
        this.PID = PID;
    }

    public void setP_Name(String P_Name) {
        this.P_Name = P_Name;
    }

    public void setP_Quantity(int P_Quantity) {
        this.P_Quantity = P_Quantity;
    }

    public void setP_description(String P_description) {
        this.P_description = P_description;
    }

    public void setP_Price(int P_Price) {
        this.P_Price = P_Price;
    }

    @Override
    public String toString() {
        return "ProductData{" + "PID=" + PID + ", P_Name=" + P_Name + ", P_Quantity=" + P_Quantity + ", P_description=" + P_description + ", P_Price=" + P_Price + '}';
    }
    
}
