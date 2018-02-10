
two files

		spms.html	basic html file with a 'form element'
				one form is submitted, it calls db_access.php
				this is the php script being called


		db_access.php
			
				the sciprt that collects users input 

				$db		//important - edit the db_access.php file to correspond to the name of the database you are connecting to
						//else the script will fail


		inner working of the script
		
				1. connects to the databse specified by the $db variable
				2. collects the input query in an array using $post function from the 'form' element in 'spms.html' file
				
				3. some subtelties
						 next I cal l 'stripslashes' function to remove backslashes auto added by php
						 because our queries use apsotroph

						 php adds backslashes when it finds apostroph thus deforming our sql query

						example: if our query was 
	
									select name from student where name='john'
									
									this will become


									select name from student where name=\'john\'

				4. next part is jut a few loops where

						i first print the columns

						then print the filed values in each tupple/row


			




								