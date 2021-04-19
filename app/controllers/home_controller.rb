class HomeController < ApplicationController
  def index
  end
  def api
    url = 'https://jsonplaceholder.typicode.com/todos'
    response = HTTParty.get(url)
    @todos = response.parsed_response
  end
end
