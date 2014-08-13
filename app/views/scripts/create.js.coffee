<% if @script.errors.empty? %>
  location.reload( true )
<% else %>
  $( '.form-group' ).removeClass( 'has-error' )
  $( '.input-error' ).empty()
  <% if @script.errors.messages[:name] %>
  $( '#script-name' ).addClass( 'has-error' )
  $( '#script-name-error' ).html( '<%= escape_javascript( render partial: 'errors/form', locals: { label: '名前', messages: @script.errors.messages[:name] } ) %>' )
  <% end %>
<% end %>
