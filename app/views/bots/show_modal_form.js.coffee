$('.modal-form').html( '<%= escape_javascript( render partial: 'bots/form' ) %>' )
$('#modal-form').modal()
