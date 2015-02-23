          <section class="content">
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Add User</h3>
                                </div><!-- /.box-header -->
                                <form name ="userinput" action="<?php echo base_url(); ?>register/create_user_now" method="post">
                                <div class="box-body">
                                    <div class="form-group">
                                    <label>User role</label>
                                    </div>
                                    <div class="form-group">
                                    <label>Firstname</label>
                                    <input type="text" name="firstname" class="form-control" placeholder="Enter ..." REQUIRED>
                                    </div>
                                    <div class="form-group">
                                    <label>Lastname</label>
                                    <input type="text" name="lastname" class="form-control" placeholder="Enter ..." REQUIRED>
                                    </div>
                                    <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control" placeholder="Enter ..." REQUIRED>
                                    </div>
                                    <div class="form-group">
                                    <label>Password</label>
                                    <input type="text" name="password" class="form-control" placeholder="Enter ..." REQUIRED>
                                    </div> 
                                    <div>
                                        <input type="submit" value="Submit" />
                                    </div>
                                </div>

                                </form>
                            </div>
                </section><!-- /.content -->