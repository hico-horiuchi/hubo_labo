$('.modal-form').html( '<%= escape_javascript( render partial: 'bots/delete', locals: { bot: @bot } ) %>' )
$('#modal-form').modal()
