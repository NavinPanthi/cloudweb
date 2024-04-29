<?php
include('includes/header.php');
error_reporting(E_ALL);
ini_set('display_errors', 'On');
?>
 
 <?php 
    if(isset($_GET['del_user'])){
    $delete_user_id = $_GET['del_user'];
    $delete_user = "delete from instructors where user_id = '$delete_user_id'";
    $del_user = mysqli_query($con,$delete_user);  
      
    echo "<script>alert('Instructor Deleted Successfully!!')</script>";
    echo "<script>window.open('all_users.php','_self');</script>"; 
        
    };
?>
 

<?php include("includes/footer.php");?>