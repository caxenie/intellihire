package com.intellihire.service;

import java.sql.*;

/**
 * Created by Klaus on 24.04.2016.
 */
public class JDBCTest {
    public static String[] tryDatabase(String name) {
        String connectionString =
                "jdbc:sqlserver:/intellihire.database.windows.net:1433;"
                        + "database=intellihiredb;"
                        + "user=intellihire@intellihire;"
                        + "password=testocean2016!;"
                        + "encrypt=true;"
                        + "trustServerCertificate=false;"
                        + "hostNameInCertificate=*.database.windows.net;"
                        + "loginTimeout=30;";

        // Declare the JDBC objects.
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        PreparedStatement prepsInsertPerson = null;
        PreparedStatement prepsUpdateAge = null;
        String[] values = new String[7];
        try {
            connection = DriverManager.getConnection(connectionString);

            String query = "select ide, res, d1, d2, d3, d4, d5 from results where ide = "+ name + ";";
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                values = new String[]{rs.getString("ide"), rs.getString("res"), rs.getString("d1"),
                        rs.getString("d2"), rs.getString("d3"), rs.getString("d4"), rs.getString("d5")};
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            handleFinally(connection, statement, resultSet, prepsInsertPerson, prepsUpdateAge);

        }
        return values;
    }

    private static void handleFinally(Connection connection, Statement statement, ResultSet resultSet, PreparedStatement prepsInsertPerson, PreparedStatement prepsUpdateAge) {
        // Close the connections after the data has been handled.
        if (prepsInsertPerson != null) try {
            prepsInsertPerson.close();
        } catch (Exception e) {
        }
        if (prepsUpdateAge != null) try {
            prepsUpdateAge.close();
        } catch (Exception e) {
        }
        if (resultSet != null) try {
            resultSet.close();
        } catch (Exception e) {
        }
        if (statement != null) try {
            statement.close();
        } catch (Exception e) {
        }
        if (connection != null) try {
            connection.close();
        } catch (Exception e) {
        }
    }


    public static void insertIntoDB(String ide, String a1, String a2, String a3, String a4, String a5) {
        String connectionString =
                "jdbc:sqlserver:/intellihire.database.windows.net:1433;"
                        + "database=intellihiredb;"
                        + "user=intellihire@intellihire;"
                        + "password=testocean2016!;"
                        + "encrypt=true;"
                        + "trustServerCertificate=false;"
                        + "hostNameInCertificate=*.database.windows.net;"
                        + "loginTimeout=30;";

        // Declare the JDBC objects.
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        PreparedStatement prepsInsertPerson = null;
        PreparedStatement prepsUpdateAge = null;
        try {
            connection = DriverManager.getConnection(connectionString);

            String query = "insert into anwsers values("  + a1 + ", " + a2 + ", " + a3 + ", " + a4 + ", " + "a5" + ", " + ide + ");";
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            handleFinally(connection, statement, resultSet, prepsInsertPerson, prepsUpdateAge);
        }
    }
}