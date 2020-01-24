class EntriesController < ApplicationController
  before_action :authenticate_user!

  def create
    log = Log.find(params[:log_id])
    entry = log.entries.build(entry_params)
    entry.save
    render_resource(log)
  end

  def update
    entry = Entry.find(params[:id])
    authorize_user_resource(entry.log)
    entry.update(entry_params)
    render_resource(entry.log)
  end

  def destroy
    entry = Entry.find(params[:id])
    log = entry.log
    authorize_user_resource(entry.log)
    entry.destroy
    render_resource(log)
  end

  private

  def entry_params
    params.require(:entry).permit(:category, :servings, foods_attributes: [:label, :fat, :protein, :calories, :carbs])
  end
end
