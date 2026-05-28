import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ProgramClientCode {

    public static void main(String[] args) {

        try {
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5455/safefoodartdb",
                    "postgres",
                    "1234"
            );

            Statement statement = connection.createStatement();

            ResultSet resultSet =
                    statement.executeQuery("SELECT current_database();");

            while (resultSet.next()) {
                System.out.println(
                        "Connected to DB: " +
                        resultSet.getString(1)
                );
            }

            connection.close();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
