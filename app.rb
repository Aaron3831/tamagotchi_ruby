require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tom')
require('pry')

get('/')  do
  @toms= Tom.name()
  # @toms= Tom.food_level()
  # @toms= Tom.activity_level()
  erb(:index)
end

post("/tom") do
  place_input= params.fetch(@feed)
  place_input= params.fetch(@rest)
  place_input= params.fetch(@activity)
  erb(:results)
end
