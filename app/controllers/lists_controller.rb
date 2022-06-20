class ListsController < ApplicationController
  def new
    @list = List.new
    # 2章投稿機能を作ろう
  end
  def create#2章保存機能を追加するで追記（次のendまで）
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end
  def index
  end

  def show
  end

  def edit
  end

  private#2章保存機能を追加するで追記（次のendまで）
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
