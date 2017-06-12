require "bundler/gem_tasks"

task :test do
  system %(rubocop -c rubocop.yml)
  system %(rubocop -c rubocop-rails.yml)
end

task :fix do
  system %(rubocop -c rubocop.yml -a)
end

task default: :test
