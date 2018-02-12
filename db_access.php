<!-- access_db.php
A PHP script to access the Student Mangement Databasethrough MySQL
-->

<!DOCTYPE html>
<html lang = "en">
	<head>
		<title> Web Based Student Project Mangement System with MySQL </title>
		<meta charset = "utf-8" />
	</head>
	<body>
	<?php
		//Connect to MySQL
  	$user = 'root';
		$password='root';
		$db = 'ProjectManagementSystem';
		$conn = mysqli_connect("localhost", $user, $password, $db);

		if (mysqli_connect_errno()) {
			print "Connect failed: " . mysqli_connect_error();
			exit();
		}

		//removing backslashes from default behaviour of magic_quotes_gpc function in PHP

		$query = $_POST['query'];
		trim($query);
		$query = stripslashes($query);

		//show the query entered by the client before returning the results
		$client_query = htmlspecialchars($query);
		print "<p> Your query is: " . $client_query . "</p>";


		// Execute and return results back to client
		$result = mysqli_query($conn, $query);
		if (!$result) {
			print "Error - the query could not be executed" .
			mysqli_error($conn);
			exit;
		}

		print "<table><caption> <h2> Your Query Results </h2> </caption>";

		print "<tr align = 'center'>";

		//store number of tupples to use in loop when displaying results
		$num_tupples = mysqli_num_rows($result);

		//First print the column labels
		if ($num_tupples > 0) {
			$tupple = mysqli_fetch_assoc($result);
			$num_fields = mysqli_num_fields($result);

			$column_keys = array_keys($tupple);
				for ($index = 0; $index < $num_fields; $index++)
					print "<th>" . $column_keys[$index] . "</th>";
					print "</tr>";

		//now print the fields in each row
			for ($row_num = 0; $row_num < $num_tupples; $row_num++) {
				print "<tr>";
				$tupple_values = array_values($tupple);
					for ($index = 0; $index < $num_fields; $index++) {
						$field_value = htmlspecialchars($tupple_values[$index]);
						print "<td>" . $field_value . "</td>";
					}
				print "</tr>";
				$tupple = mysqli_fetch_assoc($result);
			}
		}


	else {
		print "Nothing to match, your query returned no results. <br />";
	}
	print "</table>";
	?>

</body>
</html>
