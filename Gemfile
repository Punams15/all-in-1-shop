source "https://rubygems.org"

gem "rails", "~> 8.1.0"
gem "propshaft"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "jbuilder"

# Authentication
gem "devise"

# Windows time zone support
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Caching, job queue, and cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance
gem "bootsnap", require: false

# Deployment
gem "kamal", require: false
gem "thruster", require: false

# Optional image processing
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "rspec-rails"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
