class WorkflowsController < ApplicationController
  before_action :current_workflow, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :show, :update, :destroy]

  def index
    @workflows = Workflow.all
  end

  def new
    @workflow = Workflow.new
  end

  def create
    @workflow = Workflow.new(workflow_params)
    @workflow.user = current_user
    @workflow.save
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @workflow.update_attributes(workflow_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @workflow.destroy
    redirect_to user_path(@user.id)
  end

  private

  def workflow_params
    params.require(:workflow).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten, :elen, :twelve, :thirteeen, :fourteen, :fifteen, :step)
  end

  def current_workflow
    @workflow = Workflow.find_by_id(params[:id])
  end
  
end
