<div id="htmxposts">
  <% @htmxposts.each do |htmxpost| %>
    <%= render htmxpost %>
    <p>
      <%= link_to "Show this htmxpost", htmxpost %>
    </p>
  <% end %>
</div>

<%= link_to "New htmxpost", new_htmxpost_path %>