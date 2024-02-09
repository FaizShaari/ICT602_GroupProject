<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "ict602_group";

    // Create a connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get form data
    $typeHazard = $_POST["type_hazard"];
    $timeDateReported = $_POST["timeDate_reported"];
    $reporterName = $_POST["reporter_name"];
    $hazardLocation = $_POST["hazard_location"];
    $hazardDescription = $_POST["hazard_desc"];
    $latitude = $_POST["lat"];
    $longitude = $_POST["lng"];

    // SQL query to insert data into the database
    $sql = "INSERT INTO information (type_hazard, timeDate_reported, reporter_name, hazard_location, hazard_desc, lat, lng)
            VALUES ('$typeHazard', '$timeDateReported', '$reporterName', '$hazardLocation', '$hazardDescription', '$latitude', '$longitude')";

if ($conn->query($sql) === TRUE) {
    echo '<script>alert("Hazard data submitted successfully!");</script>';
    echo '<script>window.location.href = "crisismapper.php";</script>';
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close the connection
$conn->close();
} else {
echo "Invalid request!";
}
?>
