<% if @adapter.errors.empty? %>
  location.reload( true )
<% else %>
  $( '.form-group' ).removeClass( 'has-error' )
  $( '.input-error' ).empty()
  <% if @adapter.errors.messages[:name] %>
  $( '#adapter-name' ).addClass( 'has-error' )
  $( '#adapter-name-error' ).html( '<%= escape_javascript( render partial: 'errors/form', locals: { label: '名前', messages: @adapter.errors.messages[:name] } ) %>' )
  <% end %>
  <% if @adapter.errors.messages[:service_name] %>
  $( '#adapter-service-name' ).addClass( 'has-error' )
  $( '#adapter-service-name-error' ).html( '<%= escape_javascript( render partial: 'errors/form', locals: { label: 'サービス名', messages: @adapter.errors.messages[:service_name] } ) %>' )
  <% end %>
<% end %>
