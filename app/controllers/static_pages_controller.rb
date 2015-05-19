class StaticPagesController < ApplicationController
  def home
    @tasks = Task.paginate(page: params[:page])
    @total_num_tasks = Task.all.count
  end

  def help
  end

  def about
  end

  def contact
  end
end
