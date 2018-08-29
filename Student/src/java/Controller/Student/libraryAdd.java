import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import util.DBConnection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rashmini
 */
public  class libraryAdd implements libraryinterface{
     
        public  Connection con;
        public static PreparedStatement preparedStatement;
         
    
    @Override
    public void addLibrary(libraryClass lib) {
      
                   String ISBN_num = lib.getISBN_num();
                   String name =  lib.getname();
                   String authorName =  lib.getauthorName();
                   String price = lib.getprice();
                   String edition = lib.getedition();
                   String subject = lib.getsubject();
                      
                   
                   try{
                       
                       con = DBConnection.createConnection();
                       String query  = "insert into libraryresources ( ISBN_num,name,authorName,price,edition,subject)" + " values (?,?,?,?,?,?) ";
                       
                         preparedStatement = con.prepareStatement(query);


                         preparedStatement.setString(1,ISBN_num);
			 preparedStatement.setString(2,name);
			 preparedStatement.setString(3,authorName);
			 preparedStatement.setString(4,price);
			 preparedStatement.setString(5,edition);
			 preparedStatement.setString(6,subject);
		
			
			
			 preparedStatement.executeUpdate();
                   }
                   
                    catch(SQLException e){
                        
                    	
				e.printStackTrace();
			}
                   
			 finally {
		
				 try {
					 if (preparedStatement != null) {
						 preparedStatement.close();
					 }
					 	if (con != null) {
					 		con.close();
					 	}
				  }
                                  
                                 catch (SQLException e) {
					 e.getMessage();
				 }
				 
				
		}
        
        
        
    }     

    @Override
    public String updateLibrary(String ISBN_num, libraryClass lib) {

         if(ISBN_num != null){
              
                 String name = lib.getname();
                 String authorName =  lib.getauthorName();
                 String price =  lib.getprice();
                 String edition = lib.getedition();
                 String subject =  lib.getsubject();
              
          
                 	try
			{
				con = DBConnection.createConnection();
		
		String query="Update libraryResource set  ISBN_num=?,name=?,authorName=?,price=?,edition=?,subject=?  where ISBN_num= '" +ISBN_num + "'"; 

                preparedStatement = con.prepareStatement(query);


			preparedStatement.setString(1,ISBN_num);
			preparedStatement.setString(2,name);
			preparedStatement.setString(3,authorName);
			preparedStatement.setString(4,price);
			preparedStatement.setString(5,edition);
			preparedStatement.setString(6,subject);
			
							
                        preparedStatement.executeUpdate();				
				
			} catch (SQLException e) {
					e.getMessage();
				}
                 
                   finally {
			
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (con != null) {
						con.close();
					}
				}
                                
                                catch (SQLException e) {
					 e.getMessage();
				}
			}    
          }
          return ISBN_num;
    }

       
    

    @Override
    public void  deleteLibrary(String ISBN_num) {
       	if (ISBN_num != null ) {
			
			
			
			try{ 
				con = DBConnection.createConnection();
                               
			String query="delete from libraryresources where  ISBN_num = '" +ISBN_num+"'";
				
				preparedStatement = con.prepareStatement(query);
				
			
				preparedStatement.executeUpdate();				
				
			} 
                        
                        catch (SQLException e) {
					e.getMessage();
				} 
                          
    
    
                       finally {
			
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (SQLException e) {
					 e.getMessage();
				}
			
				}
			}
		}
}
   