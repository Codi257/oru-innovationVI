<html>
<body>

Information for <?php echo $_POST["S"]; ?><br>



<?php
$servername = "localhost";
$username = "id80102_homeaze";
$password = "homeaze16";
$dbname = "id80102_homeaze";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$AdultCount = $_POST["AdultCount"];
$ChildCount = $_POST["ChildCount"];
$Single_Men = $_POST["men"];
$Single_Women =$_POST["women"];
$Families =$_POST["family"];
$AcceptsSexOffender =$_POST["sex offender"];
$AcceptsExCons =$_POST["ex-con"];
$AdultsOnly =$_POST["age"];
$ReferralRequired =$_POST["referral"];
$SobrietyRequired =$_POST["soberiety"];
if ($Single_Men = "on") {
	$a = sprintf(", b.Single_Men = 1")
	if ($Single_Women = "on") {
	$b = sprintf(", b.Single_Women = 1")
	if ($Families = "on") {
	$c = sprintf(", b.Families = 1")
	if ($AcceptsSexOffender = "on") {
	$d = sprintf(", b.AcceptsSexOffender = 1")
	if ($AcceptsExCons = "on") {
	$e = sprintf(", b.AcceptsExCons = 1")
}if ($ReferralRequired = "on") {
	$f = sprintf(", b.ReferralRequired = 1")
}if ($SobrietyRequired = "on") {
	$g = sprintf(", b.SobrietyRequired = 1")
}

//echo $newval;+=+
$sql = sprintf("SELECT a.Name, b.Contact, b.Contact_Phone, b.Contact_Email FROM Organization a, Shelter b where a.Org_ID = b.Org_ID" + $a + $b + $c  + $d + $e + $f + $g);
//echo $sql;
echo $sql;


$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Shelter: " . $row["a.Name"]. " - Contact: " . $row["b.Contact"]." - Contact Phone Number: " . $row["b.Contact_Phone"].  "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
</body>
</html>