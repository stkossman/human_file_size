# frozen_string_literal: true

require_relative 'lib/human_file_size/version'

Gem::Specification.new do |spec|
  spec.name        = "human_file_size"
  spec.version     = HumanFileSize::VERSION
  spec.authors     = ["Andrii Stavskyi"]
  spec.email       = ["an.stawski@outlook.com"]

  spec.summary     = "Formats file sizes into a human-readable format."
  spec.description = "Accepts a file size in bytes and returns a string with the appropriate prefix (e.g., '1.5 MB', '1024 KB')."
  spec.homepage    = "https://github.com/stkossman/human_file_size"
  spec.license     = "MIT"

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/stkossman/human_file_size"
end