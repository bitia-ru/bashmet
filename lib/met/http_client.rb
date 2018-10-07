require 'rest-client'


module Met
  class Application
    def http_client
      @http_client ||= RestClient
    end
  end
end

