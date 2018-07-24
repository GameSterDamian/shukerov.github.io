# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# general configuration
activate :directory_indexes
activate :livereload

# github deploy
activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true
  deploy.branch = "master"
  deploy.remote = "git@github.com:shukerov/shukerov.github.io.git"
  deploy.commit_message = "Delpoying @ #{Time.now}"
end

# markdown and syntax highlighting
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true
activate :syntax

# activating blogs
activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "article_layout"
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
