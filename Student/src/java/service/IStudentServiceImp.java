package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Model.Student;
import java.sql.ResultSet;
import java.sql.Statement;
import util.DBConnection;

public class IStudentServiceImp implements IStudentService{

	  public  static Connection con;
	  public static PreparedStatement preparedStatement;
	
	
	@Override
	public void registerStudent(Student stu) {
		
		String fullname = stu.getFullName();
		String gender = stu.getGender();
		String dob = stu.getDob();
		String address = stu.getAddress();
		String nic = stu.getNic();
		String email = stu.getEmail();
		String contactNo = stu.getContactNo();
		String year = stu.getOLyear();
		String index = stu.getIndex();
		String result = stu.getResult();
		String special = stu.getSpecial();
                String date =stu.getRegDate();
		String username = stu.getUsername();
		String password = stu.getPassword();
		String parentName = stu.getPname();
		String occpation = stu.getPoccupation();
		String wPlace = stu.getWplace();
		String pTel = stu.getPtelphone();
		String course = stu.getCourse();
		

        
        try {
                con = DBConnection.createConnection();
                String query ="insert into Student (userID,fullname,gender,dob,address,NIC,regDate,email,contactNum,OL_year,indexNo,OL_Result,Special,s_username,s_password,parentName,parentOC,p_WorkingPlace,courseCode,w_Telphone) "
                		+ "values (NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
                preparedStatement = con.prepareStatement(query);
                preparedStatement.setString(1,fullname);
                preparedStatement.setString(2,gender);
                preparedStatement.setString(3,dob);
                preparedStatement.setString(4,address);
                preparedStatement.setString(5,nic);
                preparedStatement.setString(6,date);
                preparedStatement.setString(7,email);
                preparedStatement.setString(8,contactNo);
                preparedStatement.setString(9,year);
                preparedStatement.setString(10,index);
                preparedStatement.setString(11,result);
                preparedStatement.setString(12,special);
                preparedStatement.setString(13,username);
                preparedStatement.setString(14,password);
                preparedStatement.setString(15,parentName);
                preparedStatement.setString(16,occpation);
                preparedStatement.setString(17,wPlace);
                preparedStatement.setString(18,course);
                preparedStatement.setString(19,pTel);


                preparedStatement.executeUpdate();
                
           } catch (SQLException e) {
			 e.getMessage();
			 
           } finally {
		
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


	@Override

        public boolean loginCheck(String sid, String pass, String utype){
            
            String sql = "select * from student where s_username= ? AND s_password = ?";
           // Connection con = null;
            
            try{
                con = DBConnection.createConnection();
                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, sid);
                st.setString(2, pass);
                
                
                ResultSet rs = st.executeQuery();
                
      		if(rs.next())
		{
                    return true;
		}
                
                }catch(Exception e){
                        e.printStackTrace();
		}
		return false;
		
            }
        
    public String getID(String sid, String pass , String utype){
        
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		String id = null ;
		try
		{
			con = DBConnection.createConnection();	
			statement=con.createStatement();
			String sql1 =" select userID  from student where s_password='"+pass+"'"; 
			
			resultSet = statement.executeQuery(sql1);
			while(resultSet.next()) {
				id = resultSet.getString("userID");
			}
		
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return id;
        }
        
    public String updateStudent(String user, Student c) {
		
		Connection con = null;
		PreparedStatement statement = null;

		
		if(user != null) {
			
			String fullName = c.getFullName();
			String  address = c.getAddress();
			String contactNumber = c.getContactNo();
			String email = c.getEmail();
                        String olYear = c.getOLyear();
                        String olresults = c.getResult();
                        String indexno = c.getIndex();
                        String special = c.getSpecial();
                        String username = c.getUsername();
                        String pname = c.getPname();
                        String wpaddress = c.getWplace();
                        String pcontactno = c.getPtelphone();
                       
			
			
			try {
				
				con = DBConnection.createConnection();
				String sq = "update student set userID=?, fullname=?,address=?,email=?,contactNum=?,OL_year= ?,OL_Result=?,indexNo=?,Special=?,s_username=?,parentName=?,p_WorkingPlace=?,w_Telphone=? where userID='"+user+"'";
			
				statement = con.prepareStatement(sq);
				statement.setString(1, user);
				statement.setString(2, fullName);
				statement.setString(3, address);
				statement.setString(4, email);
				statement.setString(5, contactNumber);
                                statement.setString(6, olYear);
                                statement.setString(7, olresults);
                                statement.setString(8, indexno);
                                statement.setString(9, special);
                                statement.setString(10, username);
                                statement.setString(11, pname);
                                statement.setString(12, wpaddress);
                                statement.setString(13, pcontactno);
				
				statement.executeUpdate();
			
			
			}			
			
		 catch (SQLException e) {
			e.getMessage();
		} finally {
	
		try {
			if (statement != null) {
				statement.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			 e.getMessage();
		}
		}
	}

		return user;
	}
    
      public void deleteStudent(String userID){  		
			if (userID != null) {
	
			try{ 
				con = DBConnection.createConnection();
				String sql1="DELETE FROM student WHERE userID='"+userID+"'";
				
				preparedStatement = con.prepareStatement(sql1);
				preparedStatement.executeUpdate();				
				
			} catch (SQLException e) {
					e.getMessage();
				} finally {
			
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


