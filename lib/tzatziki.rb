require "tzatziki/version"
require "tzatziki/reporter"
require "tzatziki/mappings"

require "cucumber/platform"

module Tzatziki
  def self.lint(features = nil)
    # This will run the features from within the package
    # Ideally I would like having no features here, adding them to a wrapper (vflinter, or similar)
    # And, allowing for the addition/overriding of those
    bundled_features = features || File.expand_path('../features', File.dirname(__FILE__))
    features_glob = "#{bundled_features}/**/*.feature"

    feature_files = Dir[features_glob].reject { |f| f =~ /iso-8859-1/ }
    puts "Running features:"
    p feature_files
  
    require 'cucumber/core'
    extend Cucumber::Core
  
    require 'cucumber/core/gherkin/document'
    features = feature_files.map do |file|
      Cucumber::Core::Gherkin::Document.new(file, File.read(file))
    end
  
    mappings = Tzatziki::Mappings.new(bundled_features)
  
    report = DebugReport.new(mappings.runtime)
  
    #require 'cucumber/core/test/tag_filter'
    execute features, mappings, report, []
    report.after_suite

    p "#{report.test_cases.total_passed} / #{report.test_cases.total}"
    p report.test_cases.exceptions[0].message unless report.test_cases.exceptions.empty?
  end
end