<% if @adapter %>
  location.reload( true )
<% else %>
  alert( '更新できませんでした。' )
<% end %>
