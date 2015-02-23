

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
               
    
                <h2>Register</h2>
    
                <div class="row nmb">
                <form name ="userinput" action="<?php echo base_url(); ?>register/create_user_now" method="post">
                    <ul class="verdict group">

                        <li class="good">
                            <h4>Firstname <span id="gameplay_rate"></span></h4>
                            <p>
                            <input type="text" name="firstname" class="form-control" placeholder="Enter ..." REQUIRED>
                            
                            </p>

                        </li>
    

                        <li class="good">
                            <h4>Lastname <span id="graphic_rate"></span></h4>
                            <p>
                            <input type="text" name="lastname" class="form-control" placeholder="Enter ..." REQUIRED>
                            
                            </p>
                        </li>
                        <li class="good">
                            <h4>Email <span id="music_rate"></span></h4>
                            <p>
                             <input type="text" name="email" class="form-control" placeholder="Enter ..." REQUIRED>
                            
                            </p>
                        </li>
                        
                        <li class="good">
                            <h4>Password</h4>
                            <p>                         
                                <input type="password" name="password" class="form-control" placeholder="Enter ..." REQUIRED>
                            </p>
                        </li>

                        

                        
                    </ul>
                    <input type="submit" name="save" class="button" value="Register">
                 </form>
                </div>
            
                
                


                
                
            </div><!-- /item-content -->       

            
        </article><!-- /single -->  
        

    </div><!-- /row -->
    </div><!-- /container -->




</body>

<?php $this->load->view('footer'); ?>
