<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "music";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM artists INNER JOIN album on artists.artists_ID=album.artists_ID";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>name</th><th>title</th><th>year</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr>
        <td>".$row["name"]."</td>
        <td>".$row["title"]."</td>
        <td>".$row["year"]."</td>
        </tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();
?>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>