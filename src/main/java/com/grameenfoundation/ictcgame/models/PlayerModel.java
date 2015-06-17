/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.grameenfoundation.ictcgame.models;

import com.grameenfoundation.ictcgame.entities.Player;
import com.grameenfoundation.ictcgame.utilities.HibernateUtil;
import java.util.logging.Level;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Joseph George Davis
 * @date Jun 17, 2015 9:49:00 AM
 * description:
 */
public class PlayerModel extends BaseModel<Player>{

    public PlayerModel(Class<Player> entityClass) {
        super(entityClass);
    }
    
    
    public PlayerModel() {
        super(Player.class);
    }
    
    
    
    public Player getPlayerByCode(String code)
    {
            
         //open hibernate session
         Session session = HibernateUtil.getSessionFactory().openSession();
         
         //hibernate query to execute
         String query = "From Player  where usercode='"+code.trim()+"'";
         System.out.println("query "+ query);
         
         System.out.println(query);
         Transaction tx = null;
        
         try {
             //begin transaction
             tx = session.beginTransaction();
             
             //execute query to return crop object
             Player player = (Player)session.createQuery(query).uniqueResult();
             
             if(null!=player)
             {
                 System.out.println("Crop Details retrieved successfuly "+player.getRevenue());
                
                 return player;
                 
             }
             else
             {
                 System.out.println("Crop Details retrieval failed");
             }   
          tx.commit();   
         } catch (Exception e) {
             e.printStackTrace();
             return null;
         }
         finally
         {
             //closes session
             session.close();
         }
         
         return null;
    }
     
}
