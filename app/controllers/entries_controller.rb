class EntriesController < ApplicationController
  before_action :authenticate_user!

  def create
    l = Log.last
    entry = Entry.new(entry_params)
    entry.log = l
    entry.save
    render_resource(entry)
  end

  private

  def entry_params
    params.require(:entry).permit(:category, foods_attributes: [:label, :fat, :protein, :calories, :carbs])
  end
end
