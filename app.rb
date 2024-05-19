require "sinatra"
require "sinatra/reloader"

require "http"


get("/") do
  
  response = HTTP.get("https://api.exchangerate.host/list?access_key=#{ENV.fetch("EXCHANGE_RATE_KEY")}")

  erb(:home)
end
