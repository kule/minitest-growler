require 'helper'

describe 'minitest-growler' do
  before do
    Minitest::StatisticsReporter.any_instance.stubs(:report)
    @reporter = Minitest::Growler.new({})
  end
  it "growls green when all tests pass" do
    @reporter.expects(:notify).with("Tests Passed! (5 assertions)", :success)
    @reporter.assertions = 5
    @reporter.failures = 0
    @reporter.errors = 0
    @reporter.report
  end
  it "growls red when an test fails" do
    @reporter.expects(:notify).with("Tests Failed! (1 failures, 0 errors)", :failure)
    @reporter.assertions = 2
    @reporter.failures = 1
    @reporter.errors = 0
    @reporter.report
  end
  it "growls red when a test errors" do
    @reporter.expects(:notify).with("Tests Failed! (0 failures, 1 errors)", :failure)
    @reporter.assertions = 2
    @reporter.failures = 0
    @reporter.errors = 1
    @reporter.report
  end
  it "growls red when tests fail and error" do
    @reporter.expects(:notify).with("Tests Failed! (2 failures, 3 errors)", :failure)
    @reporter.assertions = 15
    @reporter.failures = 2
    @reporter.errors = 3
    @reporter.report
  end
end