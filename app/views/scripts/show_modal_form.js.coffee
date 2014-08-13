$('.modal-form').html( '<%= escape_javascript( render partial: 'scripts/form', locals: { script: @script } ) %>' )
$('#modal-form').modal()
