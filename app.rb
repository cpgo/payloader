require "roda"
require "json"

class App < Roda
  plugin :json
  route do |r|
    r.root do
      r.get do
        "<h1> POST pra /post ou /post2</h1>"
      end
    end
    r.on "post" do
      r.post do
        response["Content-Type"] = "application/json"
        r.params.to_json
      end
    end
    r.on "post2" do
      r.post do
        response["Content-Type"] = "application/json"
        r.params.to_json
      end
    end
  end
end
