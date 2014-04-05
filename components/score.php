<?php
    $query_result = mysql_query("SELECT * FROM results WHERE user_no = '".$_SESSION['user_no']."'");
    $result_row = mysql_fetch_assoc($query_result);

?>
<div role="main" class="ui-content jqm-content">
<div class="ui-grid-a">
    <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:center">Subject Field</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:center">Scores</div></div>
    <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left">Scientific Ability</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left"><?php echo round($result_row['result_science'] / 15 * 100,2).' %';?></div></div>
    <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left">Math Ability</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left"><?php echo round($result_row['result_math'] / 15 * 100,2).' %'; ?></div></div>
    <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left">English Ability</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left"><?php echo round($result_row['result_english']/ 15 * 100,2).' %'; ?></div></div>
    <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left">Computer Ability</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left"><?php echo round($result_row['result_computer']/ 15 * 100,2).' %'; ?></div></div>
    <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left">Clerical Ability</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left"><?php echo round($result_row['result_clerical']/ 15 * 100,2).' %'; ?></div></div>
     <div class="ui-block-a"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left">Business Ability</div></div>
    <div class="ui-block-b"><div class="ui-bar ui-bar-a" style="height:30px;text-align:left"><?php echo round($result_row['result_business']/ 15 * 100,2).' %'; ?></div></div>
</div>

<h3 class="ui-bar ui-bar-a ui-corner-all">Suggestion</h3>
    <div class="ui-body">
        <?php 

        if ($result_row['result_math'] >= 10)
        {
			echo "<p>Best for Mathematics related courses is the best course for you to take. You have a lot of knowledge in Mathematics Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Teacher Major in Math </li><li>Engineering</li><li>Architectural Courses</li></ul>";
        }
        elseif ($result_row['result_math'] >= 5)
        {
			echo "<p>Mathematics related courses. You have a lot of knowledge in Mathematics Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Teacher Major in Math </li><li>Engineering</li><li>Architectural Courses</li></ul>";
        }
 
		if ($result_row['result_clerical'] >= 10)
        {
			echo "<p>Best for Clerical related course. You have a lot of knowledge in Clerical Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Computer Secretarial</li><li>Book Keeping</li></ul>";
        }
		elseif ($result_row['result_clerical'] >= 5)
        {
			echo "<p>Clerical related course.</p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Computer Secretarial</li><li>Book Keeping</li></ul>";
        }

        if ($result_row['result_computer'] >= 10)
        {
			echo "<p>Best for Computer related course. You have a lot of knowledge in Computer Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Information Technology</li><li>Computer Science</li><li>Computer Engineering</li><li>Computer Technician</li></ul>";
        }
        elseif ($result_row['result_computer'] >= 5)
        {
			echo "<p>Computer related course.</p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Information Technology</li><li>Computer Science</li><li>Computer Engineering</li><li>Computer Technician</li></ul>";
        }

         if ($result_row['result_business'] >= 10)
        {
			echo "<p>Business related course is the best course for you to take. You have a lot of knowledge in Business Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Business Management</li><li>Accountacy</li><li>Entreprenuership</li></ul>";
        }
         elseif ($result_row['result_business'] >= 5)
        {
			echo "<p>Business related course.</p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Business Management</li><li>Accountacy</li><li>Entreprenuership</li></ul>";
        }

         if ($result_row['result_science'] >= 10)
        {
			echo "<p>Best for Science related course. You have a lot of knowledge in Science Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Teacher major in science subject</li><li>BS Biology</li><li>BS Chemistry</li><li>Medical Science</li><li>Nursing</li><li>Geology</li></ul>";
        }
         elseif ($result_row['result_science'] >= 5)
        {
			echo "<p>Science related course is the best course for you to take. You have a lot of knowledge in Science Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Teacher major in science subject</li><li>BS Biology</li><li>BS Chemistry</li><li>Medical Science</li><li>Nursing</li><li>Geology</li></ul>";
        }
        if ($result_row['result_english'] >= 10)
        {
			echo "<p>Best for English related course. You have a lot of knowledge in English Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Teacher major in Communication related course</li><li>Mascom</li></ul>";
        }
        if ($result_row['result_english'] >= 5)
        {
			echo "<p>English related course is the best course for you to take. You have a lot of knowledge in English Literacy. </p>";
        	echo "<ul><li> You can take the following Courses:</li><li>Teacher major in Communication related course</li><li>Mascom</li></ul>";
        }

        ?>
    </div>
</div>