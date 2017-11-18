require "bundler/gem_tasks"

task :test do
  system %(rubocop -c config/rubocop.yml)
  system %(rubocop -c config/rubocop-rails.yml)
end

task :fix do
  system %(rubocop -c rubocop.yml -a)
end

task :extract do
  require "yaml"
  require_relative "lib/the_bath_of_zahn/utility/extractor"

  extract = TheBathOfZahn::Utility::Extractor.new

  Dir.chdir("config/internal") do
    File.write("style_guide.yml", extract.rules_plain.to_yaml)
    File.write("rails_style_guide.yml", extract.rules_rails.to_yaml)
  end
end

task default: :test
