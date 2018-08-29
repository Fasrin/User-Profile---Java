/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rashmini
 */
@WebServlet(urlPatterns = {"/addLibraryResource"})
public class addLibraryResource extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String ISBN_num   = request.getParameter("ISBN_num");
                String name  = request.getParameter("name");
                String authorName  =  request.getParameter("authorName ");
                String price  =  request.getParameter("price ");
                String edition  =  request.getParameter("edition ");
                String subject   = request.getParameter("subject");
                
            libraryClass  libRes =  new libraryClass ();
            
            libRes.setISBN_num(ISBN_num);
            libRes.setname(name);
            libRes.setauthorName(authorName);
            libRes.setprice(price);
            libRes.setedition(edition);
            libRes.setsubject(subject);
            

            libraryinterface libint  = new libraryAdd();
                libint.addLibrary(libRes);
                request.getRequestDispatcher("/result.jsp").forward(request, response);
              
    }

 }
