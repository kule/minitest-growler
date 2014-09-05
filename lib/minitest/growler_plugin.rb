require "minitest/test"
require "growl"

module Minitest

  def self.plugin_growler_options(opts, options)
  end

  def self.plugin_growler_init(options)
    if Growler.growler?
      self.reporter << Growler.new(options)
    end
  end

  class Growler < StatisticsReporter
    VERSION = "5.1.0"

    def self.growler!
      @growler = true
    end

    def self.growler?
      @growler ||= false
    end

    def initialize(options)
      super
    end

    def report
      super

      if failures.to_i > 0 || errors.to_i > 0
        Growl.notify "Tests Failed! (#{failures.to_i} failures, #{errors.to_i} errors)", :image => image_path(:failure)
      else
        Growl.notify "Tests Passed! (#{assertions.to_i} assertions)", :image => image_path(:success)
      end
    end

    def image_path(type)
      File.join(File.expand_path(File.dirname(__FILE__)), 'images', "#{type}.png")
    end
  end
end
