$(document).on('change', '#gist_mail_country_name', function() {
	$.ajax({
		url: '/load_cities',
		type: 'GET',
		dataType: 'script',
		data: {
			country_name: $('#gist_mail_country_name :selected').val()
		}
	});
})