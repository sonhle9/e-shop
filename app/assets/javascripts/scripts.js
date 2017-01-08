$(document).ready(function(){
	var quantity = $(".number_tag").val();
	$('.quantity-decrement').click(function(){
		quantity--;
	});
	
	$('.quantity-increment').click(function(){
		quantity++;
	});
});
