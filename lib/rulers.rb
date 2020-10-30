require "rulers/array"
require "rulers/version"

module Rulers
  class Error < StandardError; end

  class Application
    def call(env)
      [
        200,
        { 'Content-Type' => 'text/html' },
        ["Hello, World!"]
      ]
    end
  end
end
