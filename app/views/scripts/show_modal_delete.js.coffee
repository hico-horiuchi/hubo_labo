$('.modal-form').html( '<%= escape_javascript( render partial: 'scripts/delete', locals: { script: @script } ) %>' )
$('#modal-form').modal()
