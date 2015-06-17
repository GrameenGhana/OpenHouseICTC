/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.grameenfoundation.ictcgame.controller;

import com.grameenfoundation.ictcgame.entities.Player;
import com.grameenfoundation.ictcgame.models.PlayerModel;
import com.grameenfoundation.ictcgame.utilities.FactoryId;
import com.grameenfoundation.ictcgame.utilities.ModelFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author grameen
 */
@WebServlet(name = "GameOn", urlPatterns = {"/GameOn"})
public class GameOn extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String agrostage1 = request.getParameter("agrostage1");
            String lifechoice1 = request.getParameter("lifechoice1");
            String agrostage2 = request.getParameter("agrostage2");
            String lifechoice2 = request.getParameter("lifechoice2");
            String agrostage3 = request.getParameter("agrostage3");
            String lifechoice3 = request.getParameter("lifechoice3");
            String agrostage4 = request.getParameter("agrostage4");
            String lifechoice4 = request.getParameter("lifechoice4");
            String agrostage5 = request.getParameter("agrostage5");
            String lifechoice5 = request.getParameter("lifechoice5");
            String loan = request.getParameter("loan");
            String playerCode = request.getParameter("playercode");
            double totalRevenue = 0.0;
           
            
            
            if(null==loan)
                loan = "no loan taken";
            if(null==lifechoice1);
                lifechoice1="0";
            if(null==lifechoice2)
                lifechoice2="0";
            if(null==lifechoice3)
                lifechoice3="0";
            if(null==lifechoice4)
                lifechoice4="0";
            if(null==lifechoice5)
                lifechoice5 ="0";
            
            double amount_spent = Double.parseDouble(agrostage1)+ Double.parseDouble(agrostage2)+Double.parseDouble(agrostage3)+
                     Double.parseDouble(agrostage4)+ Double.parseDouble(agrostage5);
            
            
            //revenue calculations
            if(amount_spent >= 1800.00)
            {
                totalRevenue = 3500;
            }
            else if(amount_spent >=1700 && amount_spent<=1799)
            {
                totalRevenue = 3000;
            }
            else if(amount_spent>=1600 && amount_spent<=1699)
            {
                totalRevenue = 2500;
            }
            else if(amount_spent>=1500 && amount_spent<1599)
            {
                totalRevenue = 2000;
            }
            else
            {
                totalRevenue = 1000;
            }
            
            Player p = new Player();
            
            p.setStage1Agro(agrostage1);
            p.setStage1Life(lifechoice1);
            p.setStage1Loan(loan);
            p.setStage2Life(lifechoice2);
            p.setStage2Agro(agrostage2);
            p.setStage2Loan(loan);
            p.setStage3Agro(agrostage3);
            p.setStage3Life(lifechoice3);
            p.setStage3Loan(loan);
            p.setStage4Agro(agrostage4);
            p.setStage4Life(lifechoice4);
            p.setStage4Loan(loan);
            p.setStage5Agro(agrostage5);
            p.setStage5Life(lifechoice5);
            p.setStage5Loan(loan);
            p.setRevenue("2500");
            p.setAmountSpent((String.valueOf(amount_spent)));
            p.setUsercode(playerCode);
           // p.setPlayerid(new Date().getSeconds());
            
            
            
            
            PlayerModel playerModel = (PlayerModel) ModelFactory.getModel(FactoryId.PLAYERGAME);
            
           boolean created = playerModel.create(p);
           
           if(created)
           {
               System.out.println("player done");
           }          
           
            
            
            
            
            
        }
//        catch(Exception e)
//        {
//            e.printStackTrace();
//        }
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
