# frozen_string_literal: true

require_relative "lib/luhn_credit_card_verificator/version"

Gem::Specification.new do |spec|
  spec.name = "luhn_credit_card_verificator"
  spec.version = LuhnCreditCardVerificator::VERSION
  spec.authors = ["sbourgeois"]
  spec.email = ["sarah.bourgeois.bc@gmail.com"]

  spec.summary = "Verify the validity of a credit card thanks to the the most reliable luhn algorithm"
  spec.description = "As the name of the package assumes, the verification is based on the Luhn algorithm. It allows you to check very easy if numbers of a credit card are valid or not."
  spec.homepage = "https://github.com/SarahBourgeois/luhn_credit_card_verificator"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/SarahBourgeois/luhn_credit_card_verificator"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SarahBourgeois/luhn_credit_card_verificator"
  spec.metadata["changelog_uri"] = "https://github.com/SarahBourgeois/luhn_credit_card_verificator"

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
