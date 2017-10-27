require "roda"
require "json"

class App < Roda
  plugin :json
  route do |r|
    r.post do
      response["Content-Type"] = "application/json"
      r.params.to_json
    end
  end
end
