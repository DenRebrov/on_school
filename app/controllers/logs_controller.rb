class LogsController < ApplicationController
  before_action :authorize_admin!

  def index
  	redirect_to '/logster'
  end

  private

  def authorize_admin!
    user = current_user || User.find_by(id: session[:user_id])
    ability = Ability.new(user)

    unless ability.can?(:read, :logs)
      redirect_to root_path, alert: 'У вас нет доступа к логам.'
    end
  end
end
