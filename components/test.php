            <?php
            $query_quest = mysql_query("SELECT * FROM test WHERE test_no = '".$_SESSION['test_no']."'");
            $quest_row = mysql_fetch_assoc($query_quest);
            $_SESSION['correct'] = $quest_row['correct'];
            $_SESSION['category'] = $quest_row['category'];
            ?>
            <div role="main" class="ui-content jqm-content">
                <div class="ui-body ui-body-a ui-corner-all">
                  <p>
                    <?php echo $quest_row['question'];?> 
                  </p>
                </div>
                <form action="index.php" method="post">               
                <fieldset data-role="controlgroup">
                        <input type="radio" name="choice" id="radio-choice-1" value="<?php echo $quest_row['answer1'];?>">
                        <label for="radio-choice-1"><?php echo $quest_row['answer1'];?></label>
                        <input type="radio" name="choice" id="radio-choice-2" value="<?php echo $quest_row['answer2'];?>">
                        <label for="radio-choice-2"><?php echo $quest_row['answer2'];?></label>
                        <input type="radio" name="choice" id="radio-choice-3" value="<?php echo $quest_row['answer3'];?>">
                        <label for="radio-choice-3"><?php echo $quest_row['answer3'];?></label>
                        <input type="radio" name="choice" id="radio-choice-4" value="<?php echo $quest_row['answer4'];?>">
                        <label for="radio-choice-4"><?php echo $quest_row['answer4'];?></label>
                </fieldset>        
                <br/>
                <br/>
                <input type="submit" name="answer" value="Submit" class="ui-btn ui-icon-check ui-btn-icon-left">
                </form>         
            </div>
