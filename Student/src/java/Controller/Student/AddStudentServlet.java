/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller.Student;

import Model.Student;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.IStudentService;
import service.IStudentServiceImp;


@WebServlet(name = "AddStudentServlet", urlPatterns = {"/AddStudentServlet"})
public class AddStudentServlet extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        
                String fullName = request.getParameter("fname");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String contactno = request.getParameter("contactno");
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String nic = request.getParameter("nic");
		String special = request.getParameter("special");
                String date=request.getParameter("date");
		String olyear = request.getParameter("olyear");
		String indexnumber = request.getParameter("indexnumber");
		String result = request.getParameter("result");
		String pname = request.getParameter("pname");
		String pcontactno = request.getParameter("pcontactno");
		String occupation = request.getParameter("occupation");
		String wpaddress = request.getParameter("wpaddress");
		String Course = request.getParameter("Course");
		
		Student student = new Student();
		
		student.setFullName(fullName);
		student.setAddress(address);
		student.setGender(gender);
		student.setDob(dob);
		student.setContactNo(contactno);
                student.setUsername(uname);
		student.setEmail(email);
		student.setPassword(password);
		student.setNic(nic);
		student.setSpecial(special);
                student.setRegDate(date);
                student.setOLyear(olyear);
                student.setIndex(indexnumber);
                student.setResult(result);
                student.setPname(pname);
                student.setPtelphone(pcontactno);
                student.setPoccupation(occupation);
                student.setWplace(wpaddress);
                student.setCourse(Course);
	
		
		IStudentService s = new IStudentServiceImp();
		s.registerStudent(student);
		
	
		
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		
		
    

        
    }

 
}
