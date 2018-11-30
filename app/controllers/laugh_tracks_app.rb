class LaughTracksApp < Sinatra::Base

set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: params[:id])
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
    erb :"comedians/index"
  end

end
