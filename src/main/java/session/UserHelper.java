/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import Model.users.User;

/**
 *
 * @author Apergot
 */
public class UserHelper {
    
    private static boolean CheckIfUserExists (User user) {
        //TODO: check if the user exists in the database
        return true;
    }
    
    public static User RegisterUser (User user) {
        if (CheckIfUserExists(user)) {
            return user;
        }
        //TODO: register the user into the system and log in
        return user;
    }
    
    public static User LogUserIn (User user) {
        if (CheckIfUserExists(user)) {
            //Todo: log the user into the system and return User objec to to store in session.
            return user;
        }
        return null;
    }
    
}
