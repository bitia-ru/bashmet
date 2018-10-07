require 'logger'


module Met
  class Application
    def logger
      @logger ||= Logger.new(STDOUT)
    end
  end
end

