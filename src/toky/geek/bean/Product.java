package toky.geek.bean;

public class Product {
    String name;
    double price=10.0,number=0,total=-1;  //price默认10元
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public double getNumber() {
        return number;
    }
    public void setNumber(double number) {
        this.number = number;
    }
    public double getTotal()
    {  total=number*price;
        return total;
    }
}
