<%# _htmxpost.html.erb %>
<div id="<%= dom_id(htmxpost) %>">
  <p>
    <strong><%= htmxpost.title %></strong><br>
    <%= htmxpost.body %>
  </p>
  <% if htmxpost.persisted? %>
    <%= link_to "Edit", edit_htmxpost_path(htmxpost), data: { hx_get: edit_htmxpost_path(htmxpost), hx_target: "##{dom_id(htmxpost)}", hx_swap: "outerHTML" } %>
    <%= link_to "Show Here", htmxpost_path(htmxpost), data: { hx_get: htmxpost_path(htmxpost), hx_target: "##{dom_id(htmxpost)}", hx_swap: "outerHTML" } %>    
    <%= link_to "Show Full", htmxpost_path(htmxpost), data: { hx_get: htmxpost_path(htmxpost), hx_target: "#zz", hx_swap: "innerHTML" } %>
    <%= link_to "Delete", htmxpost_path(htmxpost), method: :delete, data: { hx_delete: htmxpost_path(htmxpost), hx_target: "##{dom_id(htmxpost)}", hx_swap: "delete" } %>
  <% else %>
    <em>Unsaved Post</em>
  <% end %>
</div>
