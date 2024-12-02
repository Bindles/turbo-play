<p style="color: green"><%= notice %></p>
<div class="mydiv">coolz


<%= render @htmxpost %>
</div>
<div id="ya"></div>
<div>
  <%= link_to "Edit this htmxpost", edit_htmxpost_path(@htmxpost) %> |
  <%= link_to "Back to htmxposts", htmxposts_path %>

  <%= button_to "Destroy this htmxpost", @htmxpost, method: :delete %>
</div>

</div>
