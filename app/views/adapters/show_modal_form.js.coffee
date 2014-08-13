$('.modal-form').html( '<%= escape_javascript( render partial: 'adapters/form', locals: { adapter: @adapter } ) %>' )
$('#modal-form').modal()
