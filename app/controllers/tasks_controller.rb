class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def create
    @task = Task.new(title: params[:title])
    if @task.save
      flash[:success] = "\"" + @task.title+ "\"" + "を追加しました"
      redirect_to('/')
    else
    end
  end

end
