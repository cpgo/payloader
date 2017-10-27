require "roda"
require "json"

class App < Roda
  plugin :json
  route do |r|
    r.root do
      r.redirect "/post"
    end
    r.post do
      response["Content-Type"] = "application/json"
      puts "blablabl"
      r.params.to_json
    end
  end
end
