$('.modal-form').html( '<%= escape_javascript( render partial: 'bots/form', locals: { bot: @bot } ) %>' )
$('#modal-form').modal()
