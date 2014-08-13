<% if @bot.errors.empty? %>
  location.reload( true )
<% else %>
  $( '.form-group' ).removeClass( 'has-error' )
  $( '.input-error' ).empty()
  <% if @bot.errors.messages[:name] %>
  $( '#bot-name' ).addClass( 'has-error' )
  $( '#bot-name-error' ).html( '<%= escape_javascript( render partial: 'errors/form', locals: { label: '名前', messages: @bot.errors.messages[:name] } ) %>' )
  <% end %>
<% end %>
