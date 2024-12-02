<div class="container my-5">
  <!-- Title -->
  <h1 class="text-center mb-4 text-primary">HTMX Posts</h1>

  <div class="row">
    <!-- Left Column: Posts -->
    <div class="col-md-6">
      <div class="card shadow-sm mb-4">
        <div class="card-header bg-primary text-white">
          <h2 class="h5 mb-0">Posts</h2>
        </div>
        <div class="card-body" id="posts-container">
          <%= render @htmxposts %>
        </div>
        <div class="card-footer text-center">
          <%= link_to "New Post", new_htmxpost_path, class: "btn btn-success btn-sm" %>
        </div>
      </div>
    </div>

    <!-- Right Column: Show Full -->
    <div class="col-md-6">
      <div class="card shadow-lg">
        <div class="card-header bg-info text-white">
          <h2 class="h5 mb-0">Selected Post</h2>
        </div>
        <div class="card-body" id="zz">
          <p class="text-muted">Click "Show Full" on a post to see its full details here.</p>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="new-post-form">
  <%= link_to "New Post", new_htmxpost_path, data: { hx_get: new_htmxpost_path, hx_target: '#new-post-form', hx_swap: 'innerHTML' } %>
</div>

