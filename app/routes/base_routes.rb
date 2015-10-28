module Sinatra
  module ReplaceWithName
    module Routing
      module AppBase

        def self.registered(app)
          
          home = -> do
            erb :app_base
          end

          api_endpoint = -> do
            response = JSON.parse(request.body.read)

            halt 200, "Success!".to_json
          end

          app.get '/', &home
          app.post '/api/v1/api_endpoint', provides: :json, &api_endpoint

        end
      end
    end
  end
end
