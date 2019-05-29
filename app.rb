require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reversename = @name.reverse!
    "#{@reversename}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @number_squared = @number ** 2
    @number_squared_s = @number_squared.to_s
    "#{@number_squared_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []
    @number.times do
      @phrase_array << @phrase
    end
    @phrase_repeat = @phrase_array.join(" ")
    "#{@phrase_repeat}"
  end

end
