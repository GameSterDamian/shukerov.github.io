# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# markdown and syntax highlighting
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true, :with_toc_data => true
activate :syntax

# activating relative links
set :relative_links, true

# activating blogs
activate :blog do |blog|
  blog.prefix = "blog"
  blog.permalink = "{title}"
  blog.layout = "article_layout"
  #blog.summary_separator = "/[:comment] # (END OF SUMMARY)"
end

# general configuration
activate :directory_indexes
activate :livereload

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets # Use relative URLs
  set :build_dir, 'public'
end
