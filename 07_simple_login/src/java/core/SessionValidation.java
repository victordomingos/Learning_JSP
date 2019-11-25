package core;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author EFA
 */
public class SessionValidation {
    public static Boolean validateUser(String user, String passwd){
        return (user.equals("npk") && passwd.equals("123"));
    }
}
