require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/howdy") do 
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/square/new") do
  erb(:square_calc)
end

get("/square/results") do
  @the_num =  params.fetch("users_number").to_f
  @result = @the_num ** 2
  erb(:square_result)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num =  params.fetch("users_number").to_f
  @result = @the_num ** 0.5
  erb(:root_result)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do 
  erb(:random_result)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  erb(:payment_results)
end
