    <body>
        <div data-role="page" class="jqm-demos" data-quicklinks="true">
        <?php
			include_once('components/header.php');
			session_start();
				$place_firstname = "First Name";
				$place_surname = "Sur Name";
			
			if(isset($_POST['register']))
				{
					$surname = $_POST['surname'];
					$firstname = $_POST['firstname'];
					$query_user_exist = mysql_query("SELECT * FROM user_info WHERE sur_name='".$surname."' and first_name='".$firstname."' ");
					$count_user_exist = mysql_num_rows($query_user_exist);
				if($count_user_exist >= 1){
					$place_firstname = "Name already exist";
					$surname = '';
					$firstname = '';
					include_once('components/login.php');
					}
				else{
					mysql_query("INSERT INTO `user_info` (`user_no`, `sur_name`, `first_name`) VALUES ('','".$surname."','".$firstname."')");
					$query_logged_in =  mysql_query("SELECT * FROM user_info WHERE sur_name='".$surname."' and first_name='".$firstname."' ");
					$fetch_logged_in = mysql_fetch_assoc($query_logged_in);
					mysql_query("INSERT INTO `results`(`user_no`, `result_science`, `result_math`, `result_english`, `result_clerical`, `result_computer`, `result_business`) VALUES ('".$fetch_logged_in['user_no']."','0','0','0','0','0','0')");
					$_SESSION['user_no'] = $fetch_logged_in['user_no'];
					$_SESSION['test_no'] = 1;			
					}
				}
			if(isset($_GET['log_out']))
				{
					session_destroy();
					?>
					<meta HTTP-EQUIV="REFRESH" content="0; url=index.php">
					<?php
				}
			if(isset($_SESSION['user_no']))
				{
				if(isset($_POST['answer']))
					{
					$_SESSION['test_no'] = $_SESSION['test_no'] + 1;
					$correct = $_SESSION['correct'];
					$category = $_SESSION['category'];
				if(isset($_POST['choice']))
						{
							$answer = $_POST['choice'];
						}
				else{
						$answer = '';
					}
					if($answer == $correct)
						{
						$result = mysql_query("SELECT * FROM `results` WHERE user_no= '".$_SESSION['user_no']."'");
						$fetch_result = mysql_fetch_assoc($result);
						if($category == 'scientific ability')
							{
								$fetch_result['result_science'] = $fetch_result['result_science'] + 1;
								mysql_query("UPDATE `results` SET `result_science` = '".$fetch_result['result_science']."' WHERE user_no= '".$_SESSION['user_no']."'");
							}
						elseif($category == 'mathematical ability')
							{
								$fetch_result['result_math'] = $fetch_result['result_math'] + 1;
								mysql_query("UPDATE `results` SET `result_math` = '".$fetch_result['result_math']."' WHERE user_no= '".$_SESSION['user_no']."'");
							}							
						elseif($category == 'english ability')
							{
								$fetch_result['result_english'] = $fetch_result['result_english'] + 1;
								mysql_query("UPDATE `results` SET `result_english` = '".$fetch_result['result_english']."' WHERE user_no= '".$_SESSION['user_no']."'");
							}							
						elseif($category == 'clerical ability')
							{
								$fetch_result['result_clerical'] = $fetch_result['result_clerical'] + 1;
								mysql_query("UPDATE `results` SET `result_clerical` = '".$fetch_result['result_clerical']."' WHERE user_no= '".$_SESSION['user_no']."'");
							}
						elseif($category == 'business ability')
							{
								$fetch_result['result_business'] = $fetch_result['result_business'] + 1;
								mysql_query("UPDATE `results` SET `result_business` = '".$fetch_result['result_business']."' WHERE user_no= '".$_SESSION['user_no']."'");
							}							
						elseif($category == 'computer ability')
							{
								$fetch_result['result_computer'] = $fetch_result['result_computer'] + 1;
								mysql_query("UPDATE `results` SET `result_computer` = '".$fetch_result['result_computer']."' WHERE user_no= '".$_SESSION['user_no']."'");
							}																					
						}
					}
					if($_SESSION['test_no']<=90)
					{
					include_once('components/test.php');
					}
					else
					{
					include_once('components/score.php');
					}					
				}			
			else
				{
					include_once('components/login.php');
				}
			if(isset($_SESSION['user_no']))
				{			
					include_once('components/panel.php');
				}
			include_once('components/footer.php');			
		?>
        </div>
    </body>