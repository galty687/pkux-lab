source "https://rubygems.org"

# Use GitHub Pages gem which includes Jekyll and all necessary dependencies
gem "github-pages", "~> 232", group: :jekyll_plugins

# Jekyll plugins that work with GitHub Pages
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-sitemap", "~> 1.3"
  gem "jekyll-seo-tag", "~> 2.6"
  gem "jekyll-paginate", "~> 1.1"
end

# Windows and JRuby compatibility
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# HTTP server for Jekyll development
gem "webrick", "~> 1.7"