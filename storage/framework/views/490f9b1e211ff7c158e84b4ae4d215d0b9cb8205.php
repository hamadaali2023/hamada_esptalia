<h1>أهلا <?php echo e($user->name); ?></h1>

<p>
يرجى الضغط على زر إعادة تعيين كلمة المرور لإعادة تعيين كلمة المرور الخاصة بك	<a href="<?php echo e(url('reset_password/'. $user->email. '/' .$code )); ?>"> أعادة تعين</a>
</p><?php /**PATH /home/findfamily/public_html/template/bootstrap/template-rtll/resources/views/emails/forgot.blade.php ENDPATH**/ ?>