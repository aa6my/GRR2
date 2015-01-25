<?php $this->load->view('header'); ?>

<body>

<div class="container">
	<?php $this->load->view('top_header'); ?>
	<?php $this->load->view('slider'); ?>
	
	<div class="row">
		<div class="sixteen columns">		
			<div class="two-thirds column alpha content">
				<?php $this->load->view('review'); ?>
				<?php $this->load->view('latest_news'); ?>
			</div><!-- /content -->
			
			<div class="one-third column omega sidebar narrow">
				<?php $this->load->view('sidebar'); ?>		
			</div>
			
		</div><!-- /main -->
	</div><!-- /row -->
</div><!-- /container -->

<?php $this->load->view('footer'); ?>
