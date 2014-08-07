<% if @script %>
  location.href='/scripts'
<% else %>
  locatiton.reload( true )
<% end %>
