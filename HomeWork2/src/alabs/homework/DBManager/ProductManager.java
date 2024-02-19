package alabs.homework.DBManager;

import alabs.homework.entity.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class ProductManager extends DBManager {
    public static ArrayList<Product> getProducts(){
        ArrayList<Product> products = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * from products");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                long id = resultSet.getLong("id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                Date expirationDate = resultSet.getDate("expiration_date");
                products.add(new Product(id, name, description, expirationDate));
            }
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return products;
    }
    public static void addProduct(String name, String desc){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into products(name, description) values (?, ?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, desc);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void changeProduct(Product product){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("Update products set name = ?, description = ? where id = ?");
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getDescription());
            preparedStatement.setLong(3, product.getId());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void deleteProduct(Product product){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE from products where id = ?");
            preparedStatement.setLong(1, product.getId());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
