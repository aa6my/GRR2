<?php $this->load->view('header'); ?>
<style type="text/css">
	.stars{
		cursor: pointer;
	}
</style>
<body>

<div class="container">
	<?php $this->load->view('top_header'); ?>
	
	
	<body class="fullwidth">
    <div class="row">	                
		
		<article class="sixteen columns item">
	       
	
	        <div class="item-content item-single group">
	           
	
	            <h2>Add Review</h2>
	
	            <p class="categories"><?php echo $game[0]['game_title'];?></p>
	
	            <div class="row nmb">
	            <form action="" method="post">
	                <ul class="verdict group">

	                    <li class="good">
	                        <h4>Gameplay Rating <span id="gameplay_rate"></span></h4>
	                        <p>
	                        <span class="stars one-stars" data-type="gameplay">one</span><br>
	                        <span class="stars two-stars" data-type="gameplay">two</span><br>
	                        <span class="stars three-stars" data-type="gameplay">three</span><br>
	                        <span class="stars four-stars" data-type="gameplay">four</span><br>
	                        <span class="stars five-stars" data-type="gameplay">five</span><br>
	                        <input type="hidden" id="gameplay_input" name="gameplay_input" /><br>
	                        
	                        </p>

	                    </li>
	

	                    <li class="good">
	                        <h4>Graphic Rating <span id="graphic_rate"></span></h4>
	                        <p>
	                        <span class="stars one-stars" data-type="graphic">one</span><br>
	                        <span class="stars two-stars" data-type="graphic">two</span><br>
	                        <span class="stars three-stars" data-type="graphic">three</span><br>
	                        <span class="stars four-stars" data-type="graphic">four</span><br>
	                        <span class="stars five-stars" data-type="graphic">five</span><br>
	                        <input type="hidden" id="graphic_input" name="graphic_input" /><br>
	                        
	                        </p>
	                    </li>
	                    <li class="good">
	                        <h4>Music Rating <span id="music_rate"></span></h4>
	                        <p>
	                        <span class="stars one-stars" data-type="music">one</span><br>
	                        <span class="stars two-stars" data-type="music">two</span><br>
	                        <span class="stars three-stars" data-type="music">three</span><br>
	                        <span class="stars four-stars" data-type="music">four</span><br>
	                        <span class="stars five-stars" data-type="music">five</span><br>
	                        <input type="hidden" id="music_input" name="music_input" /><br>
	                        
	                        </p>
	                    </li>
						
	                    <li class="good">
	                        <h4>Title</h4>
	                        <p>	                        
	                        	<input type="text" name="review_title">
  							</p>
	                    </li>

	                    <li class="good">
	                        <h4>Content</h4>
	                        <p>	                        
	                        	<textarea name="review_story" cols="100%" rows="5"></textarea>
  							</p>
	                    
	                    </li>
	                    <li class="good">
	                        <h4>Pro</h4>
	                        <p>	                        
	                        	<textarea name="review_pro" cols="100%" rows="5"></textarea>
  							</p>
	                    </li>
	                    <li class="good">
	                        <h4>Contra</h4>
	                        <p>	                        
	                        	<textarea name="review_contra" cols="100%" rows="5"></textarea>
  							</p>
	                    </li>
	                    <!-- <li class="good">
	                        <h4>Vote</h4>
	                        <p>	   
	                        	<input type="button" id="b_vote" value="Upvote">                     
	                        	<input type="hidden" name="game_vote" id="game_vote">
	                        	<span id="vote_status"></span>
  							</p>
	                    </li> -->
						

	                    
	                </ul>
	                <input type="submit" name="save" class="button" value="Submit Your Review">
	             </form>
	            </div>
			<script type="text/javascript">
						$(function(){
							$('span.stars').on('click', function(){
								var current_this = $(this),
									star = current_this.text(),
									type = current_this.data('type');

									$('#'+type+'_rate').removeClass();
									$('#'+type+'_rate').addClass('stars '+star+'-stars');
									$('#'+type+'_input').val(star);
									
									
							});

							/*$('#b_vote').on('click', function(){

								if(window.confirm("This action can't be undone, are you sure?"))
								{
     								$('#game_vote').val(1);
     								$('#vote_status').html('<font color="green">Thank you. Your voting will take effect after submit button clicked.');
								}
								else{
									return false;
								}
							})*/
						})
						</script>
	            
	            


				
	            
	        </div><!-- /item-content -->       

	        
	    </article><!-- /single -->	
	    

    </div><!-- /row -->
    </div><!-- /container -->




</body>

<?php $this->load->view('footer'); ?>
