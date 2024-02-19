package alabs.homework.DBManager;

import alabs.homework.user.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserManager extends DBManager {
    public static User getUser(String username, String password) {
        long id = -1;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT id from users where username = ? and password = ?");
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();

            if(resultSet.next()){
                id = resultSet.getLong("id");
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        if(id == -1) return null;
        return new User(id, username, password);
    }
    public static int registerUser(User user){
        int check = -1;
        if(checkUser(user) != -1) return check;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (username, password) VALUES (?, ?)");
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            check = preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return check;
    }
    private static long checkUser(User user){
        long id = -1;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select id from users where username = ?");
            preparedStatement.setString(1, user.getUsername());
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                id = resultSet.getLong("id");
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return id;
    }
}
