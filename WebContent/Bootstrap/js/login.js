$(document).ready(function(){

function DeleteText() {
   document.getElementById('signUp-name').value = '';
   document.getElementById('signUp-password').value = '';
   document.getElementById('signUp-email').value = '';
   document.getElementById('signUp-adress').value = '';
   document.getElementById('signUp-number').value = '';
   
}

var options={
	"backdrop":"static",
	"keyboard":"true"
}


	$('#contact').modal(options);


$('#forgot').click(function() {
	   if($('#admin').is(':checked')) { alert("it's checked"); }
	});



});