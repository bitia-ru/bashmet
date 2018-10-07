require 'met/application'

module Met
  class << self
    def application
      @application ||= Met::Application.new
    end

    def application=(app)
      @application = app
    end
  end

  class Application
    def run(argv = ARGV)
      Met::CLI.start(argv)
    end
  end
end

