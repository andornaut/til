# typed: false
# frozen_string_literal: true

task default: %w[mdtoc]

desc 'Update Markdown table of contents and push changes to the git repository'
task :mdtoc do |t|
  command = <<~END
    set -e
    git pull
    if [ -n "$(git diff --name-only --diff-filter=U)" ]; then
      echo 'Error: conflicts exist' >&2
      exit 1
    fi
    mdtoc --append --create --output README.md docs/
    git add *.md **/*.md
    git commit -m 'Update TOC'
    git push
  END
  %x|#{command}|
end

