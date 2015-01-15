require "sinatra"

class BethelGive < Sinatra::Application

  set :public_folder, "public"

  get "/" do
    send_file File.expand_path("sample.html", settings.public_folder)
  end

  not_found do
    status 301
    redirect "/"
  end

end
