<?php $__env->startSection('content'); ?>	
<!-- Page Wrapper -->
<div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								
								<h3 class="page-title">الاعدادات</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Dashboard</a></li>
									<li class="breadcrumb-item active">الاعدادات</li>
								</ul>
								<?php if(session()->has('message')): ?>
	                            <?php echo $__env->make('admin.includes.alerts.success', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
	                            <?php endif; ?>
	                            <?php if(Session::has('error')): ?>
	                               <div class="row mr-2 ml-2" >
	                                    <button type="text" class="btn btn-lg btn-block btn-outline-danger mb-2" id="type-error">
	                                       <?php echo e(Session::get('error')); ?>

	                                    </button>
	                                </div>
	                            <?php endif; ?> 
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						
						<div class="col-12">
							
							<!-- General -->
							
								<div class="card">
									<!-- <div class="card-header">
										<h4 class="card-title">General</h4>
									</div> -->
									<div class="card-body">
										<form action="<?php echo e(url('settings/contactdata')); ?>" method="POST" 
								                name="le_form"  enctype="multipart/form-data">
								                                <?php echo csrf_field(); ?>
											<input type="hidden" name="id" value="<?php echo e(Auth::user()->id); ?>">
											
											<div class="form-group">
												<label>رقم الهاتف</label>
												<input type="text" name="phone" class="form-control" value="<?php echo e($contactInfo->phone); ?>">
											</div>
											<div class="form-group">
												<label>البريد الإلكتروني </label>
												<input type="text" name="email" class="form-control" value="<?php echo e($contactInfo->email); ?>">
											</div>
											<div class="form-group">
												<label>العنوان عربي </label>
												<input type="text" name="address_ar" class="form-control" value="<?php echo e($contactInfo->address_ar); ?>">
											</div>
											<div class="form-group">
												<label>العنوان انجليزي </label>
												<input type="text" name="address_en" class="form-control" value="<?php echo e($contactInfo->address_en); ?>">
											</div>
											<div class="form-group">
												<label>خط الطول علي الخريطة</label>
												<input type="text" name="longitude" class="form-control" value="<?php echo e($contactInfo->longitude); ?>">
											</div>

											<div class="form-group">
												<label>خط العرض علي الخريطة</label>
												<input type="text" name="latitude" class="form-control" value="<?php echo e($contactInfo->latitude); ?>">
											</div>
											
											<button type="submit" class="btn btn-primary btn-block">حفظ التغيير </button>
											
										</form>
									</div>
								</div>
							
							<!-- /General -->
								
						</div>
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.mainlayout_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/beaunqrp/public_html/sub/template/bootstrap/template-rtl/resources/views/admin/settings/contact.blade.php ENDPATH**/ ?>