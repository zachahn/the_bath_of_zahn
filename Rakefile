require "bundler/gem_tasks"

task :test do
  system %(rubocop -c rubocop.yml)
  system %(rubocop -c rubocop-rails.yml)
end

task :fix do
  system %(rubocop -c rubocop.yml -a)
end

task :extract do
  require "yaml"
  require_relative "lib/the_bath_of_zahn/utility/extractor"

  extractor = TheBathOfZahn::Utility::Extractor.new

  File.write("config/style_guide.yml", extractor.rules_styleguide.to_yaml)
end

task default: :test
