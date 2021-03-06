require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      "#{params[:name].reverse}"
    end

    get '/square/:number' do
      num = params[:number].to_i
      sq = num ** 2
      "#{sq}"
    end

    get '/say/:number/:phrase' do
      num = params[:number].to_i
      phr = params[:phrase]
      phr * num 
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      w1 = params[:word1]
      w2 = params[:word2]
      w3 = params[:word3]
      w4 = params[:word4]
      w5 = params[:word5]

      "#{w1} #{w2} #{w3} #{w4} #{w5}."
    end

    get '/:operation/:number1/:number2' do
      num_1 = params[:number1].to_i
      num_2 = params[:number2].to_i
      case params[:operation]
      when "add"
        "#{num_1 + num_2}"
      when "subtract"
        "#{num_1 - num_2}"
      when "multiply"
        "#{num_1 * num_2}"
      when "divide"
        "#{num_1 / num_2}"
      end
    end

end
