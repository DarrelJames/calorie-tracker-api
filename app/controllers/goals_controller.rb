class GoalsController < ApplicationController
  before_action :authenticate_user!

  def index
    goal = current_user.goal
    render json: goal
  end

  def update
    goal = Goal.find(params[:id])
    authorize_user_resource(goal)
    goal.update(goal_params)
    render_resource(goal)
  end

  private

  def goal_params
    params.require(:goal).permit(:carbs, :fat, :protein, :calories)
  end
end
