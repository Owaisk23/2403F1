<?php
include "header.php";
require("connection.php");

if($connection){

$read =   "SELECT * FROM `student`;";
$result = mysqli_query($connection, $read);

if($result){
  
if(mysqli_num_rows($result) > 0){

?>

<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Student Name</th>
      <th scope="col">Email</th>
      <th scope="col">City</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>  

<?php   
while($row=mysqli_fetch_assoc($result)){
  // echo var_dump($result);
    echo "<tr>";
    echo "<td scope='row'>".$row['stdid']."</td>"; //id
    echo "<td>".$row['name']."</td>"; //name
    echo "<td>".$row['email']."</td>"; //email
    echo "<td>".$row['city']."</td>"; //city
    echo '<td>
    <a href="update.php?id='.$row["stdid"].'" class="btn btn-success px-2 mx-2">Edit</a>
    <a href="delete.php?id='.$row["stdid"].'" class="btn btn-danger">Delete</a></td>';
    // delete.php?id=2
    echo "</tr>";
    
}
?>
</tbody>
</table>
<?php
}
else{
    echo "<script>alert('record not found')</script>";
}
}else{
echo "<script>alert('Failed to execute query')</script>";
}

}else{
    die("Failed to connect");

}
?>












