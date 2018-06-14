/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.FoodGoodEJB;
import entities.Dish;
import entities.Rate;
import entities.User;
import exceptions.MisExcepciones;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Anjo
 */
public class NewRate extends HttpServlet {

     @EJB FoodGoodEJB foodgood;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        // Recogemos las variables del formulario 
        String u = request.getParameter("user");
        User user = new User(u);
        String p = request.getParameter("dish");
        Dish dish = new Dish(p);
        String str_date = request.getParameter("date");
        DateFormat formatter;
        Date date;
        formatter = new SimpleDateFormat("dd-MMM-yy");
        date = formatter.parse(str_date);
        String comment = request.getParameter("comment");
        Integer mark = Integer.parseInt(request.getParameter("mark"));
        
        
        // Creamos el restaurante con los datos del formulario
        Rate e = new Rate(date, mark, comment, user, dish);
        try {
            foodgood.altaRate(e);
            // Si el alta ha ido bien devolvemos msg ok
            request.setAttribute("status", "¡Valoración hecha!");
        } catch (MisExcepciones ex) {
            // Devolvemos mensaje de la excepción a la vista
            request.setAttribute("status", ex.getMessage());
        }
        // Redirigimos a la vista (status.jsp en este caso)
        request.getRequestDispatcher("/status.jsp").forward(request,response);
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {
             processRequest(request, response);
         } catch (ParseException ex) {
             Logger.getLogger(NewRate.class.getName()).log(Level.SEVERE, null, ex);
         }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try {
             processRequest(request, response);
         } catch (ParseException ex) {
             Logger.getLogger(NewRate.class.getName()).log(Level.SEVERE, null, ex);
         }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
