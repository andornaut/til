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
    mdtoc --append --create --output README.md docs/
    git add *.md **/*.md
    git commit -qm 'Update TOC' || true
    git pull
    git push
  CMD
  sh command, verbose: false do |ok, status|
    unless ok
      fail "Failed with status: #{status.exitstatus}"
    end
  end
end
