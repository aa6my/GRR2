	<div class="row nmb">
		<header class="sixteen columns">
			<div class="row logo-social">
				<hgroup class="eight columns alpha">
					<h1 class="logo nmb"><a href="#"><img src="<?php echo base_url() ?>assets/images/logo6.png" alt="IndiGamer" /></a></h1>
				</hgroup><!-- /hgroup -->
				

			</div><!-- /logo-social -->	
			
			<div class="row nav-search">
				<nav id="navigation" class="twelve columns alpha">
					<ul class="nav group">
						<li>
							<a href="<?php echo base_url() ?>">Home</a>
						</li>
						<li>
							<a href="#">Games</a>
							<ul>
								<li><a href="<?php echo base_url() ?>games">All Games</a></li>
								<li><a href="<?php echo base_url() ?>games/latest">Latest Games</a></li>
								<li><a href="<?php echo base_url() ?>games/popular">Popular Games</a></li>
							</ul>
						</li>
						<?php 
						if($this->ezrbac->isGuest()){
						echo '
						<li>
							<a href="'.base_url().'register">Register</a>
						</li>
						<li>
							<a href="'.base_url().'users">Login</a>
						</li>
						';
						}
						else{
						echo '
						<li>
							<a href="'.base_url().'rbac/logout">Logout</a>
						</li>
						';	
						}		
						?>
					</ul>
				</nav><!-- /nav -->
				
			</div><!-- /nav-search -->		
		</header><!-- /header -->
	</div><!-- row -->