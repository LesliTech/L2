# frozen_string_literal: true

require_relative "lib/l2/version"

Gem::Specification.new do |spec|
    spec.name = "l2"
    spec.version = L2::VERSION
    spec.authors = ["The Lesli Development Team"]
    spec.email = ["hello@lesli.tech"]

    spec.summary = "Message utilities for the Ruby console."
    spec.homepage = "https://www.lesli.dev"
    spec.license = "GPLv3"
    
    spec.required_ruby_version = ">= 2.7.0"

    spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/LesliTech/l2"
    spec.metadata["bug_tracker_uri"] = "https://github.com/LesliTech/l2/issues"
    spec.metadata["changelog_uri"] = "https://github.com/LesliTech/l2/releases/tag/v#{spec.version}"

    # Specify which files should be added to the gem when it is released.
    # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
    spec.files = Dir.chdir(__dir__) do
        `git ls-files -z`.split("\x0").reject do |f|
            (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
        end
    end
    
    spec.bindir = "exe"
    spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]

    # Uncomment to register a new dependency of your gem
    # spec.add_dependency "example-gem", "~> 1.0"

    # For more information and examples about making a new gem, check out our
    # guide at: https://bundler.io/guides/creating_gem.html
end
