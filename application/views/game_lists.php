<?php $this->load->view('header'); ?>

<body>

<div class="container">
	<?php $this->load->view('top_header'); ?>
	
	
	<div class="row">
		<div class="sixteen columns">			
			<div class="row latest-reviews">
			<br/>
				<h3>All Games</h3>
				<h4 class="sub">List of All games</h4>
				<?php 
				foreach ($game_list as $key => $value)
			    { ?>
				<article class="four columns alpha item">
					<img alt="" src="<?php echo base_url()."upload/images/".$value['game_image'];?>" class="scale-with-grid" />
					<div class="item-content">
						<span class="stars three-stars">5 stars</span>
						<time datetime="2012-10-15"> <?php echo $value['game_release'];?></time>							
						<h2><a href="<?php echo base_url();?>games/game_list_view/<?php echo $value['game_id'];?>" target="_blank"><?php echo $value['game_title'];?></a></h2>
						<p class="categories"><?php echo $value['game_genre'];?></p>
						<p class="excerpt">
						<?php
						 if (strlen($value['game_summary']) > 50) {
						  $post = strpos($value['game_summary'], '. ', 50);
						  substr($value['game_summary'],0,$post); 
						  $output = substr($value['game_summary'], 0, $post);
						  echo $output.".";
						}
						?></p>
					</div>
				</article>
				<?php
				}
				?>
					
				
				
			</div><!-- /latest-reviews -->				
		</div><!-- /sixteen -->
	</div><!-- /row -->
</div><!-- /container -->

<?php $this->load->view('footer'); ?>
