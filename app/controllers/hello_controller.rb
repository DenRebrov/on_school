class HelloController < ApplicationController
  def index
  	Yabeda.on_school.index_page_opened_total.increment
  	render plain: 'Главная страница'
  end

  def seed_everything
    GenerateEverythingJob.perform_now
    render plain: 'Done!'
  end
end
