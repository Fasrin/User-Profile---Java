/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Student;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.IStudentService;
import service.IStudentServiceImp;

/**
 *
 * @author Fasrin
 */
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
    public loginServlet() {
     
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String utype = request.getParameter("utype");
        
        
	IStudentService iStudentService = new IStudentServiceImp();
        
        iStudentService.loginCheck(uname, pass, utype);		
	iStudentService.getID(uname, pass, utype);
        
	String id = iStudentService.getID(uname, pass, utype);
  
        
		if(iStudentService.loginCheck(uname,pass,utype)) {
			
			if(utype.equals("manager")) {
				
				HttpSession session = request.getSession(true);
				session.setAttribute("username",uname);
				session.setAttribute("id", id);
		
				RequestDispatcher dispatcher = request.getRequestDispatcher("DashBoardManager.jsp");	
				dispatcher.forward(request, response);
				
			}
			else if(utype.equals("lecturer")) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username", uname);
				session.setAttribute("id", id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("lecturerDashboard.jsp");	
				dispatcher.forward(request, response);
				
			}
			else if(utype.equals("student")) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username", uname);
				session.setAttribute("id", id);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("StudentDashboard.jsp");
				dispatcher.forward(request, response);
			}
		}
		
		else {
			
			
			
			response.sendRedirect("login.jsp");
			
		}
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
