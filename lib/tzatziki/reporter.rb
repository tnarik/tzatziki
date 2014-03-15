module Tzatziki

  class DebugReport
    attr_reader :test_cases
    def initialize(runtime)
      @runtime = runtime

                @test_cases = Cucumber::Core::Test::Result::Summary.new
          @test_steps = Cucumber::Core::Test::Result::Summary.new
    end
  #  def before_test_case(test_case)
  #    #puts "before #{test_case}"
  #    #puts
  #    #puts test_case.inspect
  #  end
#
  def after_test_case(test_case, result)
    p "=============="*4
    #puts test_case.to_yaml
    puts "after #{test_case.name}"
    puts result
    result.describe_to test_cases
 p "========>"
    p test_cases
  end

  #  def before_test_step(test_step)
  #    #puts '  ' + test_step.inspect
  #  end
#
  def after_test_step(test_step, result)
    #puts test_step.to_yaml
    puts "after #{test_step.class} result is #{result}"
    puts result.to_yaml
    #p result.kind_of? Cucumber::Core::Test::Result::Passed
    #p result.kind_of? Cucumber::Core::Test::Result::Skipped
  end

    def method_missing(method, *args, &block)
      p "there is this #{method}"
    end

  # def after_suite
  #   p "the big line"*8
  # end
  
  def done
    puts "this is done"
    #puts @runtime.to_yaml
    p @runtime.results
  end
  end
end