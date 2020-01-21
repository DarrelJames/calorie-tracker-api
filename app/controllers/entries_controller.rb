class EntriesController < ApplicationController
  before_action :authenticate_user!

  def create
    binding.pry
    entry = Entry.new(entry_params)
    entry.save
    render_resource(entry)
  end

  private

  def entry_params
    params.require(:entry).permit(:category, foods_attributes: [:label, :fat, :protein, :calories, :carbs])
  end
end
