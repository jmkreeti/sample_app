# hello_world.rb
require 'rack'
require 'rack/server'

class HelloWorld
  def response(env)
    [200, {}, env.inspect]
  end
end

class HelloWorldApp
  def self.call(env)
    HelloWorld.new.response(env)
  end
end

Rack::Server.start :app => HelloWorldApp
