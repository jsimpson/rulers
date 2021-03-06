require 'rulers/routing'
require 'rulers/util'
require 'rulers/dependencies'

require 'rulers/version'

module Rulers
  class Error < StandardError; end

  class Application
    def call(env)
      return [404, { 'Content-Type' => 'text/html' }, []] if env['PATH_INFO'] == '/favicon.ico'

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)

      [200, { 'Content-Type' => 'text/html' }, [text]]
    end
  end

  class Controller
    attr_reader :env

    def initialize(env)
      @env = env
    end
  end
end
