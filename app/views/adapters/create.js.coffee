<% if @adapter %>
  location.reload( true )
<% else %>
  alert( '登録できませんでした。' )
<% end %>
