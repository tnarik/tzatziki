require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  Coveralls::SimpleCov::Formatter,
  SimpleCov::Formatter::HTMLFormatter
]

SimpleCov.start

require 'minitest/autorun'
require 'tzatziki'

class Minitest::Spec

  def fixture(*segments)
    File.read(File.join(File.dirname(__FILE__), "fixtures", *segments))
  end

end
