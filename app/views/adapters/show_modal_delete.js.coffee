$('.modal-form').html( '<%= escape_javascript( render partial: 'adapters/delete' ) %>' )
$('#modal-form').modal()
