gem "minitest"
require 'minitest/autorun'
require 'minitest/growler'
describe 'minitest-growler' do
  it "passes" do
    assert_equal 1, 1, "Should growl success"
  end
  it "fails" do
    #assert_equal 1, 2, "Should growl failure"
  end
end