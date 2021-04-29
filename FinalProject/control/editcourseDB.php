 <?php
if (isset($_POST['update']))   {
        $name=$_POST["name"];
		$id=$_POST["id"];
		$search=$_GET['id'];
		$p=$_POST["p"];
		$d=$_POST["subject"];
		$server="localhost";
	    $user="root";
	    $password="";
	    $db="froms";
	    $conn = mysqli_connect($server,$user,$password,$db);
		$query="UPDATE course SET Name='$name', CID='$id', price='$p', description='$d' WHERE CID = '$search'";
	
		if(mysqli_query($conn,$query)){
			echo "Course info updated";
		}
		else{
			echo "Can not update info";
		}
 }
   
	?>