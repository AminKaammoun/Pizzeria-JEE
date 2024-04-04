package tn.iit.pizzeria.model.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBase {
	 public static void main(String[] args) {
	        String url = "jdbc:mysql://localhost:3306/test";
	        String username = "root";
	        String password = "";

	        try (Connection connection = DriverManager.getConnection(url, username, password)) {
	            String sql = "SELECT * FROM users";
	            try (Statement statement = connection.createStatement();
	                 ResultSet resultSet = statement.executeQuery(sql)) {

	                while (resultSet.next()) {
	                    int id = resultSet.getInt("id");
	                    String name = resultSet.getString("name");
	                    String email = resultSet.getString("email");
	                    System.out.println("ID: " + id + ", Name: " + name + ", Email: " + email);
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
}
