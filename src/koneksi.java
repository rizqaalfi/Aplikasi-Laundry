/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
/**
 *
 * @author Acer
 */
public class koneksi {
    public koneksi() throws SQLException{
        bukaKoneksi();
    }
    public Connection bukaKoneksi()throws SQLException{
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/zonalaundry", "root","");
            System.out.println("Connected");
            return con;
        }
        catch (SQLException se){
            System.out.println("No connection open");
            return null;
        }
        catch (Exception ex){
            System.out.println("Count not open connection");
            return null;
        }
        
    }
    public static void main(String[] args)throws SQLException {
        koneksi x = new koneksi();
        System.out.println(x);
    }
    
}
