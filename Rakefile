# typed: false
# frozen_string_literal: true

task default: %w[mdtoc]

desc 'Update Markdown table of contents and push changes to the git repository'
task :mdtoc do
  command = <<~CMD
    set -e
    if [ -n "$(git diff --name-only --diff-filter=U)" ]; then
      echo 'Error: conflicts exist' >&2
      exit 1
    fi
    bundle exec mdtoc --append --create --output README.md docs/
    git add README.md docs/*.md
    git commit -qm 'Update TOC' || true
    git pull
    git push
  CMD
  sh command, verbose: false do |ok, status|
    raise "Failed with status: #{status.exitstatus}" unless ok
  end
end

%w[check test lint build].each do |name|
  desc "Run #{name} in a container"
  task name do
    sh 'make', name
  end
end
