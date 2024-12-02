<p style="color: green"><%= notice %></p>

<% content_for :title, "Htmxposts" %>

<h1>Htmxposts</h1>

<div id="aaa">
  <!-- This div will be updated with the selected color's name -->
</div>

<br>---<br>

<p style="color: green"><%= notice %></p>

<h1>Colors</h1>

<div id="color-circles">
  <% @htmxposts.each do |htmxpost| %>
    <div class="color-circle" hx-get="/htmxposts/<%= htmxpost.id %>"  hx-swap="#mydiv" hx-target="#aaa" hx-headers='{"HX": "true"}'>
      <!-- Display your htmxpost circles here -->
      <%= htmxpost.title %>
    </div>
  <% end %>
</div>

<%= link_to "New htmxpost", new_htmxpost_path %>



<script>
  document.addEventListener('htmx:load', function(event) {
    // Extract the content of the .mydiv element from the fetched response
    var mydivContent = event.target.querySelector('.mydiv');

    // Update the content of the #aaa element on the index page
    document.getElementById('#aaa').innerHTML = mydivContent.innerHTML;
  });
</script>