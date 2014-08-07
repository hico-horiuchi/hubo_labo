$('.modal-form').html( '<%= escape_javascript( render partial: 'scripts/delete' ) %>' )
$('#modal-form').modal()
