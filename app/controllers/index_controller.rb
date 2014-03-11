class IndexController < ApplicationController
  def login
    redirect_to "https://oauth.yandex.ru/authorize?response_type=token&client_id=#{configatron.yandex_client_id}"
  end

  def index
    if params[:hash]
      session[:key] = params[:hash][14, 32]
    end
  end
end
