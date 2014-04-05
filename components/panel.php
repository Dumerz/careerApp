<?php
    $query_quest = mysql_query("SELECT * FROM test WHERE test_no = '".$_SESSION['test_no']."'");
    $quest_row = mysql_fetch_assoc($query_quest);
?>
<div data-role="panel" id="menu" data-theme="a" class="jqm-navmenu-panel">
    <div class="ui-panel-inner">
        <ul data-role="listview" class="ui-listview">
            <li data-icon="carat-r"><a href="#" class="ui-btn ui-btn-icon-left ui-icon-carat-r"<?php if($quest_row['category']=='scientific ability') echo'style="color:red"';?>>Scientific Ability</a></li>
            <li data-icon="carat-r"><a href="#" class="ui-btn ui-btn-icon-left ui-icon-carat-r"<?php if($quest_row['category']=='mathematical ability') echo'style="color:red"';?>>Mathematical Ability</a></li>
            <li data-icon="carat-r"><a href="#" class="ui-btn ui-btn-icon-left ui-icon-carat-r"<?php if($quest_row['category']=='english ability') echo'style="color:red"';?>>English Ability</a></li>
            <li data-icon="carat-r"><a href="#" class="ui-btn ui-btn-icon-left ui-icon-carat-r"<?php if($quest_row['category']=='clerical ability') echo'style="color:red"';?>>Clerical Ability</a></li>
            <li data-icon="carat-r"><a href="#" class="ui-btn ui-btn-icon-left ui-icon-carat-r"<?php if($quest_row['category']=='computer ability') echo'style="color:red"';?>>Computer Ability</a></li>                                    
            <li data-icon="carat-r"><a href="#" class="ui-btn ui-btn-icon-left ui-icon-carat-r"<?php if($quest_row['category']=='business ability') echo'style="color:red"';?>>Business Ability</a></li>
            <li data-icon="power" class="ui-first-child"><a href="index.php?log_out"class="ui-btn ui-btn-icon-left ui-icon-power">Exit</a></li>
        </ul>
    </div>
</div>