<% if @adapter %>
  location.href='/adapters'
<% else %>
  locatiton.reload( true )
<% end %>
