require "roda"
require "json"

class App < Roda
  plugin :json
  route do |r|
    r.on "post" do
      r.post do
        response["Content-Type"] = "application/json"
        puts "blablabl"
        r.params.to_json
      end
    end
  end
end
