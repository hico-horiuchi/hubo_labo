$('.modal-form').html( '<%= escape_javascript( render partial: 'bots/delete' ) %>' )
$('#modal-form').modal()
