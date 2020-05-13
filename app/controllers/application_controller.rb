class ApplicationController < ActionController::Base
    before_action :basic
    
            def basic
                authenticate_or_request_with_http_basic do |name, password|
                    name == "hello" && password == "YU!vKHAfdCPv"
            end
        end

    def hello
        render html: "Hello, world!"
    end
end
