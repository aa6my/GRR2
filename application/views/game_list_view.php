<?php $this->load->view('header'); ?>

<body>

<div class="container">
	<?php $this->load->view('top_header'); ?>
	
	
	<body class="fullwidth">
    <div class="row">	                
		
		<article class="sixteen columns item">
	       <center><img alt="" src="<?php echo base_url()."upload/images/".$game[0]['game_image'];?>" class="scale-with-grid"></center>
	
	        <div class="item-content item-single group">
	            <span class="stars four-stars">5 stars</span> 
	
	            <h2><?php echo $game[0]['game_title'];?></h2>
	
	            <p class="categories"><?php echo $game[0]['game_genre'];?></p>
	
	            <div class="row nmb">
	                <ul class="verdict group">
	                    <li class="good">
	                        <h4>Requirement</h4>
	                        <p><?php echo $game[0]['game_requirement'];?></p>
	                    </li>
	
	                    <li class="good">
	                        <h4>Release Date</h4>
	                        <p><?php echo $game[0]['game_release'];?></p>
	                    </li>
	
	                    <li class="good">
	                        <h4>Trailer</h4>
	                        <p>
	                        
	                        	<iframe id="ytplayer" type="text/html" width="100%" height="450" src="http://www.youtube.com/embed/<?php echo $game[0]['game_trailer'];?>?autoplay=0" frameborder="0"></iframe>
  							</p>
	                    </li>
	
	                    
	                </ul>
	            </div>
	
	            
	            <h3>Game Summary</h3>
	            <p><?php echo $game[0]['game_content'];?></p>
	            
	            <h5>Game Review</h5>



				
	            
	        </div><!-- /item-content -->       

	        
	    </article><!-- /single -->	
	    <div class="row post-comments">
					        <h2>User Reviews <a href="<?php echo base_url().'reviews/add/'.$game[0]['game_id'];?>" class="btn-reply">Add review</a></h2>
					        <ol id="comment-list">	
					        <?php 
					        foreach ($review as $key => $value)
					        {
					        	
					        
					        	?>
					        	
					       			           
					            <li class="comment depth-1">
					                <div class="comment-text group">
					                    <img alt="" src="<?php echo base_url().'upload/avatar/'.$review[0]['avatar'];?>" class="avatar"/>				
					                    <div class="comment-copy">
					                        <p class="comment-meta"><?php echo $value['review_title'];?></p>
					                        <br></br>				
					                        <p><h5> Content </h5></p>
					                        <p><?php echo $value['review_story'];?></p>
					                        
					                        <p>
						                       <h5> Gameplay </h5>
						                        <p>
						                        	<span class="stars <?php echo $value['review_gameplay'];?>-stars">5 stars</span>
						                        </p>

						                    </p>
					                        <p>
						                       <h5> Graphic </h5>
						                        <p>
						                        	<span class="stars <?php echo $value['review_graphic'];?>-stars">5 stars</span>
						                        </p>
						                        
						                    </p>
						                    <p>
						                       <h5> Music </h5>
						                        <p>
						                        	<span class="stars <?php echo $value['review_music'];?>-stars">5 stars</span>
						                        </p>
						                        
						                    </p>
						             
						                    <P> <h5>Pro</h5> </P>
					                       <p><?php echo $value['review_pro'];?></p>

					                       <p> <h5>Contra</h5> </p>
					                       <p><?php echo $value['review_contra'];?></p>

					                       
					                    </div>
					                </div>
					            </li>
					         <?php
					     }
					     ?>
					            
					        </ol>
					    </div><!-- /post-comments -->

    </div><!-- /row -->
    </div><!-- /container -->




</body>

<?php $this->load->view('footer'); ?>
