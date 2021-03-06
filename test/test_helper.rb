require 'minitest/autorun'
require 'minitest/spec'
require 'rack/test'
require 'mocha/mini_test'
require 'pry-byebug'

ENV['RACK_ENV'] = 'test'
ENV['TEACHBASE_HOST'] = 'http://go.teachbase.ru/'

require_relative '../app'

class MiniTest::Spec
  include Rack::Test::Methods

  def app
    Cuba.app
  end
end
