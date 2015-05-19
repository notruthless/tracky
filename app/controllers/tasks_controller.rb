class TasksController < ApplicationController
  def new
    @task = current_user.owned_tasks.new
  end

  def show
    @task = Task.find(params[:id])

  end

  def create
    @task = Task.new(task_params)
    @task.owner = current_user
    if @task.save
        flash[:success] = "Task  created!"
        redirect_to @task
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      flash[:success] = "Task updated"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Task deleted"
    redirect_back_or(:root)
  end

  private

    def task_params
      params.require(:task).permit(:summary, :details, :deadline,  :assignee_id)
    end

end
