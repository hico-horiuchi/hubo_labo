<% if @bot %>
  location.href='/bots'
<% else %>
  locatiton.reload( true )
<% end %>
