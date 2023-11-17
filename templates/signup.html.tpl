{% extends "base.html" %}
{% load static %}

{% block scripts %}
    {{ block.super }}
    <script src="{% static 'js/signup.js' %}"></script>
{% endblock %}

{% block body %}
<div class="container mt-5">
	<h4 class="card-title mt-3 text-center">PanOrbit my-new-version</h4>
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">Signup</h4>

			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-user"></i> </span>
				 </div>
				<input name="" class="form-control fname" placeholder="First name" type="text">
			</div>

			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-user"></i> </span>
				 </div>
				<input name="" class="form-control lname" placeholder="Last name" type="text">
			</div>

			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
				 </div>
				<input name="" class="form-control email" placeholder="Email address" type="email">
			</div>

			<div class="form-group input-group">
				<div class="input-group-prepend">
					<span class="input-group-text"> <i class="fa fa-phone"></i> </span>
				</div>
				<input name="" class="form-control phno" placeholder="Phone number" type="text">
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-outline-success btn-block" id="signup_submit"> Create Account  </button>
			</div>

			<p class="text-center">Have an account? <a href="/login" style="color: #2db04f;">Log In</a> </p>
		</article>
	</div>
</div>
{% endblock %}
