class BoardsController < ApplicationController
  def index
    @board = Board.first
  end

  def new
    @board = Board.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), notice: '保存しました'
    else
      flash.now[:error] = '保存に失敗しました'
      render :new
    end
  end

  private
  def board_params
    params.require(:board).permit(:title, :content)
  end
end
