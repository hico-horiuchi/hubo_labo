$('.modal-form').html( '<%= escape_javascript( render partial: 'adapters/delete', locals: { adapter: @adapter } ) %>' )
$('#modal-form').modal()
