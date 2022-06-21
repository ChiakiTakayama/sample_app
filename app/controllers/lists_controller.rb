class ListsController < ApplicationController
  def new
    @list = List.new
    # 2章投稿機能を作ろう
  end
  def create#2章保存機能を追加するで追記（次のendまで）
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)#4章でredirect_toを変更するで書き換え
  end
  def index
    @lists = List.all
    # 3章コントローラーにindexアクションを追加するで追記
  end

  def show
    @list = List.find(params[:id])#4章shouアクションを作成するで追記
  end

  def edit
  end

  private#2章保存機能を追加するで追記（次のendまで）
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
