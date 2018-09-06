class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(title: params[:title])
    if @task.save
      flash[:success] = "\"" + @task.title+ "\"" + "を追加しました"
      redirect_to('/')
    end
  end
  def destroy
    @task = Task.find_by(id: params[:id])
    if @task.destroy
      flash[:success] = "\"" + @task.title+ "\"" + "を削除しました"
      redirect_to('/')
    end
  end

end
