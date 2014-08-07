$('.modal-form').html( '<%= escape_javascript( render partial: 'scripts/form' ) %>' )
$('#modal-form').modal()
