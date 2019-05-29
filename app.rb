require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reversename = @name.reverse!
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number]
    @number_squared = @number ** 2
    @number_squared_s = @number_squared.to_s
    "#{@number_squared_s}"
  end

end
