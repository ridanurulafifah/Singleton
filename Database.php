<?php

class Database {
    private static $instance;
    private $connection;

    // Private constructor to prevent instantiation from outside
    private function __construct() {
        // Connect to the database (replace with your database credentials)
        $servername = "localhost";
        $username = "username";
        $password = "password";
        $dbname = "Musik";
        
        $this->connection = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($this->connection->connect_error) {
            die("Connection failed: " . $this->connection->connect_error);
        }
    }

    // Method to get the singleton instance
    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new Database();
        }
        return self::$instance;
    }

    // Method to add new music data to the database
    public function addMusic($judul, $genre, $penyanyi, $tahun) {
        $sql = "INSERT INTO jenis_musik (Judul, Penyanyi, Genre, Tahun) VALUES ('$judul', '$genre', '$penyanyi', '$tahun')";
        if ($this->connection->query($sql) === TRUE) {
            echo "New record created successfully<br>";
        } else {
            echo "Error: " . $sql . "<br>" . $this->connection->error;
        }
    }

    // Method to read music data from the database
    public function readMusic($id) {
        $sql = "SELECT * FROM jenis_musik WHERE ID=$id";
        $result = $this->connection->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "ID: " . $row["ID"]. " - Judul: " . $row["Judul"]. " - Genre: " . $row["Genre"]. " - Penyanyi: " . $row["Penyanyi"]. " - Tahun: " . $row["Tahun"]."<br>";
            }
        } else {
            echo "0 results<br>";
        }
    }

    // Method to update music data in the database
    public function updateMusic($id, $judul, $penyanyi, $genre) {
        $sql = "UPDATE jenis_musik SET Judul='$judul', Penyanyi='$penyanyi', Genre='$genre' WHERE ID=$id";
        if ($this->connection->query($sql) === TRUE) {
            echo "Record updated successfully<br>";
        } else {
            echo "Error updating record: " . $this->connection->error;
        }
    }

    // Method to delete music data from the database
    public function deleteMusic($id) {
        $sql = "DELETE FROM jenis_musik WHERE ID=$id";
        if ($this->connection->query($sql) === TRUE) {
            echo "Record deleted successfully<br>";
        } else {
            echo "Error deleting record: " . $this->connection->error;
        }
    }
}

?>
