class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @board = Board.find(params[:board_id])
  end

  def new
    @board = Board.find(params[:board_id])
    @task = @board.tasks.build
  end

  def show
    @board = Board.find(params[:board_id])
    @task = Task.find(params[:id])
    @comments = @task.comments
  end

  def edit
    @board = Board.find(params[:board_id])
    @task = @board.tasks.find(params[:id])
  end

  def update
    board = Board.find(params[:board_id])
    @task = board.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to board_tasks_path(board), notice: '更新できました。'
    else
      flash.now[:error] = '更新できませんでした'
      render :edit
    end
  end

  def destroy
    board = Board.find(params[:board_id])
    task = board.tasks.find(params[:id])
    task.destroy!
    redirect_to board_tasks_path(board), notice: '削除しました'
  end

  def create
    board = Board.find(params[:board_id])
    @task = board.tasks.build(task_params)
    if @task.save
      redirect_to board_tasks_path(board), notice: 'taskを追加'
    else
      flash.now[:error] = '更新できませんでした'
      render :new
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :content, :eyecatch)
  end
end
