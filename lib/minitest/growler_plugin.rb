require "minitest/test"
require "growl"

module Minitest

  def self.plugin_growler_options(opts, options)
  end

  def self.plugin_growler_init(options)
    if Growler.growler?
      io = Growler.new(options[:io])

      self.reporter.reporters.grep(Minitest::Reporter).each do |rep|
        rep.io = io
      end
    end
  end

  class Growler
    VERSION = "5.1.0"

    attr_reader :io

    def self.growler!
      @growler = true
    end

    def self.growler?
      @growler ||= false
    end

    def initialize(io)
      @io = io
    end

    def puts(o = nil)
      return io.puts if o.nil?

      if o =~ /(\d+) assertions, (\d+) failures, (\d+) errors/
        assertions, failures, errors = $1, $2, $3
        if failures != '0' || errors != '0'
          Growl.notify "Tests Failed! (#{failures} failures, #{errors} errors)", :image => image_path(:failure)
        else
          Growl.notify "Tests Passed! (#{assertions} assertions)", :image => image_path(:success)
        end
      end

      io.puts o
    end

    def method_missing(msg, *args)
      return super unless io.respond_to?(msg)
      io.send(msg, *args)
    end

    def image_path(type)
      File.join(File.expand_path(File.dirname(__FILE__)), 'images', "#{type}.png")
    end
  end
end
