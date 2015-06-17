/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.grameenfoundation.ictcgame.utilities;

import com.grameenfoundation.ictcgame.entities.Player;
import com.grameenfoundation.ictcgame.models.PlayerModel;

/**
 *
 * @author grameen
 */
public class test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Player player = null;
          
      PlayerModel playerModel =(PlayerModel)ModelFactory.getModel(FactoryId.PLAYERGAME);
      player= playerModel.getPlayerByCode("playercode".trim());
      
      
        System.out.println("Player " + player.getRevenue());
    }
    
}
