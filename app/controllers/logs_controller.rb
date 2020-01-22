class LogsController < ApplicationController
  before_action :authenticate_user!

  def index
    logs = current_user.logs
    render json: logs
  end

  def show
    log = Log.find(params:id)
    authorize_user_resource(log)
    render_resource(log)
  end

  def create
    log = Log.new(log_params)
    log.user = current_user
    log.save
    render_resource(log)
  end

  private

  def log_params
    params.require(:log).permit(:date)
  end
end
