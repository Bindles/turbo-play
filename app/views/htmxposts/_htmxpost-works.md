<div id="<%= dom_id htmxpost %>">
  <p>
    <strong>Titlez:</strong>
    <%= htmxpost.title %> (<a href hx-get="/htmxposts/<%= htmxpost.id %>"  hx-swap="#mydiv" hx-target="#aaa" hx-headers='{"HX": "true"}'>Show Post</a>)  
  </p>

  <p>
    <strong>Body:</strong>
    <%= htmxpost.body %>
  </p>
    <div class="zxz" hx-get="/htmxposts/<%= htmxpost.id %>"  hx-swap="#mydiv" hx-target="#aaa" hx-headers='{"HX": "true"}'>aaa</div>  

</div>
