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
    
    private static boolean CheckIfUserExists (String username) {
        //TODO: check if the user exists in the database
        return true;
    }
    
    public static User RegisterUser (String username, String password) {
        if (CheckIfUserExists(username)) {
            return new User(username);
        }
        //TODO: register the user into the system and log in
        return new User(username);
    }
    
    public static User LogUserIn (String username, String password) {
        if (CheckIfUserExists(username)) {
            //Todo: log the user into the system and return User objec to to store in session.
            return new User(username);
        }
        return null;
    }
    
}
