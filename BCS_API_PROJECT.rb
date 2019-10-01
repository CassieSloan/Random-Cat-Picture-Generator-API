require "httparty"
require "launchy"
require "json"

response = HTTParty.get("https://api.thecatapi.com/v1/images/search", 
    "x-api-key" => "6f7aa6c9-0f1a-4afb-8412-a15036fa6f93",
)

data = JSON.parse(response.body)
url = data[0]["url"]

Launchy.open(url)