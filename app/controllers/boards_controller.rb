class BoardsController < ApplicationController
  def index
    @board = Board.first
  end

  def new
    @board = Board.new
  end
end
