<p style="color: green"><%= notice %></p>

<% content_for :title, "Htmxposts" %>

<h1>Htmxposts</h1>

<div id="aaa">
  <!-- This div will be updated with the selected color's name -->
</div>

<br>---<br>

<p style="color: green"><%= notice %></p>

<h1>Colors from _post</h1>

<div id="htmxposts">
  <% @htmxposts.each do |htmxpost| %>
    <%= render htmxpost %>
    <p>
      <%= link_to "Show this htmxpost", htmxpost %>
    </p>
  <% end %>
</div>

<%= link_to "New htmxpost", new_htmxpost_path %>

<h1>Colors</h1>

<div id="color-circles">
  <% @htmxposts.each do |htmxpost| %>
    <a hx-get="/htmxposts/<%= htmxpost.id %>"  hx-swap="#mydiv" hx-target="#aaa" hx-headers='{"HX": "true"}'>
      <!-- Display your htmxpost circles here -->
      <%= htmxpost.title %>
    </a>
  <% end %>
</div>

<%= link_to "New htmxpost", new_htmxpost_path %>


