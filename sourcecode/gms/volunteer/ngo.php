<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NGO Website</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<header>
    <h1>Our NGO</h1>
    <nav>
        <ul>
            <li><a href="ngo.php">Home</a>
                <form>
                    <label for="selectOption">Contacts of Volunteers</label>
                    <select id="selectOption" name="selectOption">
                        <?php
                        // Retrieve data from the database
                        $servername = "localhost";
                        $username = "root";
                        $password = "";
                        $dbname = "garbagemsdb";

                        // Create connection
                        $conn = new mysqli($servername, $username, $password, $dbname);

                        // Check connection
                        if ($conn->connect_error) {
                            die("Connection failed: " . $conn->connect_error);
                        }

                        $sql = "SELECT Name, MobileNumber FROM tblvolunteer";
                        $result = $conn->query($sql);

                        // Check if there are rows in the result
                        if ($result->num_rows > 0) {
                            // Fetch associative array
                            while ($row = $result->fetch_assoc()) {
                                $id = $row['Name'];
                                $name = $row['MobileNumber'];
                                // Concatenate or format Name and MobileNumber together
                                $optionText = "$id - $name";
                                echo "<option value='$id'>$optionText</option>";
                            }
                        } else {
                            echo "0 results";
                        }

                        // Close the database connection
                        $conn->close();
                        ?>
                    </select>
                </form>
            </li>
        </ul>
    </nav>
</header>

<section>
    <h2>Welcome to Our NGO</h2>
    <p>
    Our NGO is dedicated to combating plastic pollution by implementing innovative waste management solutions, 
    fostering community awareness, and driving sustainable practices to create a cleaner, greener future."
    </p>
</section>

<footer>
    <p>&copy; 2023 Our NGO. All rights reserved.</p>
</footer>

</body>
</html>
