require "sinatra"

class BethelGive < Sinatra::Application

  set :public_folder, "public"

  get "/" do
    send_file File.expand_path("index.html", settings.public_folder)
  end

  get "/help" do
    send_file File.expand_path("help.html", settings.public_folder)
  end

  not_found do
    status 404
    redirect "/"
  end

end
