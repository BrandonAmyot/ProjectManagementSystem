
two files

		spms.html	basic html file with a 'form element'
				one form is submitted, it calls db_access.php
				this is the php script being called


		db_access.php
			
				the script that collects users input 

				$db		//important - edit the db_access.php file to correspond to the name of the database you are connecting to
						//else the script will fail


		inner working of the script
		
				1. connects to the database specified by the $db variable
				2. collects the input query in an array using $post function from the 'form' element in 'spms.html' file
				
				3. some subtleties
						 next I call 'stripslashes' function to remove backslashes auto added by php
						 because our queries use apstrophes

						 php adds backslashes when it finds apostrophe thus deforming our sql query

						example: if our query was 
	
									select name from student where name='john'
									
									this will become


									select name from student where name=\'john\'

				4. next part is just a few loops where

						i first print the columns

						then print the filled values in each tuple/row


			




								