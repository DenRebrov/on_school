class HelloController < ApplicationController
  def index
  	render plain: 'Главная страница'
  end
end
