###
# Compass
###

# ZURB Foundation
require "zurb-foundation"

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

# Assets directories
set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"

###
# HAML
###

set :haml, ugly: true, format: :html5

###
# Markdown
###

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, autolink: true, smartypants: true

###
# Blog settings
###

Time.zone = "Europe/Rome"

activate :blog do |blog|
  blog.prefix = "blog"
  blog.permalink = ":year-:month-:day-:title.html"
  blog.sources = ":year-:month-:day-:title.html"
  blog.taglink = "tags/:tag.html"
  blog.layout = "article"
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  blog.year_link = ":year.html"
  blog.month_link = ":year/:month.html"
  blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".md"

  blog.tag_template = "/blog/category.html"
  blog.calendar_template = "/blog/archive.html"

  blog.paginate = true
  blog.per_page = 5
  blog.page_link = "page/:num"
end

page "/blog/feed.xml", layout: false

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "robots.txt", layout: false
page "humans.txt", layout: false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

# Directory Index
activate :directory_indexes
set :trailing_slash, false

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Livereload
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

###
# Development settings
###

configure :development do
  # set :debug_assets, true
end

###
# Build settings
###

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  activate :smusher

  # Compress images after build
  # activate :image_optim

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

###
# Deploy settings
###

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
  deploy.remote = "origin"
  deploy.branch = "master"
end
