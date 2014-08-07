$('.modal-form').html( '<%= escape_javascript( render partial: 'adapters/form' ) %>' )
$('#modal-form').modal()
