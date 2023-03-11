<?php $__env->startSection('content'); ?>
<!-- Breadcrumb -->
<div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-7 col-auto">
								<h3 class="page-title">Doctor Notifaction</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Dashboard</a></li>
									<li class="breadcrumb-item active"> Notifaction</li>
								</ul>
							</div>
							<div class="col-sm-5 col">
								<a href="#Add_Specialities_details" data-toggle="modal" class="btn btn-primary float-right mt-2">Add</a>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				<div class="card author-widget clearfix">
									<div class="card-header">
										<h4 class="card-title">About Author</h4>
										</div>
										
										<?php $__currentLoopData = $patient_notttt; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $_itemmm): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
        								    <?php $__currentLoopData = $_itemmm->readnotifications; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $_items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
        									 <div class="card-body">
        										<div class="about-author">
        											<div class="about-author-img">
        												<div class="author-img-wrap">
        													<a href="doctor-profile">
        													<!--<?php if($_items->photo !=null): ?>    -->
        													<!--    <img class="img-fluid rounded-circle" alt="" -->
        													<!--src="<?php echo e(asset('assets_admin/img/patients/photo/'.$_items->photo)); ?>" width="50px" height="50px">-->
        													<!--<?php else: ?> -->
        													<!--    <img class="img-fluid rounded-circle" alt="" -->
        													<!--src="<?php echo e(asset('assets_admin/img/profile_image.png')); ?>"  width="50px" height="50px">-->
        													<!--<?php endif; ?>-->
        													</a>
        												</div>
        											</div>
        											<div class="author-details">
        												<!--<a href="doctor-profile" class="blog-author-name">Dr. <?php echo e($_items->name); ?></a><br>-->
        												<a  class="blog-author-name"> <?php echo e($_items->data['title']); ?></a><br>
        												<!--<h6 href="doctor-profile" class="">Dr. <?php echo e($_items->title); ?><h6>-->
                                                        
        												<p class="mb-0"><?php echo e($_items->data['data']); ?></p>
        											</div>
        										</div>
        									</div>
        									<hr>
            								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
										
									
									<hr>
								</div>
				</div>			
			</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.mainlayout_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/findfamily/public_html/template/bootstrap/template-rtl/resources/views/admin/patients/patientnots.blade.php ENDPATH**/ ?>