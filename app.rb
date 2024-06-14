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
  @the_min = params.fetch("user_min").to_f
  @the_max = params.fetch("user_max").to_f

  @ran_result = rand(@the_min..@the_max)
  erb(:random_result)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("apr_num").to_f
  @years= params.fetch("year_num").to_i
  @principal = params.fetch("principal_num").to_f

  # @numerator = (@apr / 100) / 12
  # n = @years * 12
  # @denominator = (1 - (1 + @principal)) ** -n

  # @result = (@numerator / @denominator).to_f

  n = @years * 12
  r = (@apr / 100) /12
  pv = @principal
  p = (r * pv) / (1-((1 + r) ** -n))
 
  @result = p 

  erb(:payment_result)

   
end
