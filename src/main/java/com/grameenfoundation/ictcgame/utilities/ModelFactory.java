/*
* @copyright Grameen Foundation
*/

package com.grameenfoundation.ictcgame.utilities;

import com.grameenfoundation.ictcgame.models.PlayerModel;

/**
 *
 * @author Joseph George Davis
 * @date Mar 20, 2015 12:25:30 PM
 * description:
 */
public class ModelFactory {
    
    
     //method to modulate models in factory
    
    public static DbServiceInterface  getModel(FactoryId factoryId)
    {
        switch(factoryId){
            
            case PLAYERGAME:
                 return new PlayerModel();
            
        }
        
        
        return null;
    }

}
