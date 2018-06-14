/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.FoodGoodEJB;
import entities.User;
import exceptions.MisExcepciones;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Anjo
 */
public class NewUser extends HttpServlet {
    
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
            throws ServletException, IOException {
        
       // Recogemos las variables del formulario 
        String nombreUsuario = request.getParameter("username");
        String password = request.getParameter("password");
        String nombreCompleto = request.getParameter("name");
        String apellidos = request.getParameter("surname");
        String ciudad = request.getParameter("city");
        Integer tipo = Integer.parseInt(request.getParameter("type"));
        
         // Creamos el usuario con los datos del formulario
        User u = new User(nombreUsuario, password, ciudad, nombreCompleto, apellidos, tipo);
        try {
            foodgood.altaUsuario(u);
            // Si el alta ha ido bien devolvemos msg ok
            request.setAttribute("status", "Empleado dado de alta");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
