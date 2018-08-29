/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rashmini
 */
public class libraryClass {
    
    String ISBN_num;
    String name;
    String authorName;
    String price;
    String edition;
    String subject;
    
    /**
     *
     * @return
     */
    public String getISBN_num(){
       return ISBN_num;
    
    }
    
    public void setISBN_num(String ISBN_num){
       this.ISBN_num= ISBN_num;
    }
    
    public  String getname(){
       return name;  
    }
    
    public void setname(String name){
       this.name = name;
    }
    
    public String  getauthorName(){
       return authorName;
    }
    
    public void setauthorName(String authorName){
       this.authorName = authorName;
    }
    
    public String getprice(){
       return price;
    }
    public void setprice(String price){
       this.price = price;
    }
    
    
    public String  getedition(){
       return edition;
       
    }
    public void setedition(String edition  ){
       this.edition = edition;
    }
    
    
    public   String getsubject(){
        return subject;
  }
    
    public void setsubject(String subject){
        this.subject = subject;
    }
  
}
