class ListsController < ApplicationController
  def new
    @list = List.new
    # 2章投稿機能を作ろう
  end
  def create#8章バリデーションチェック（次のendまで）
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
    end  
  end
  def index
    @lists = List.all
    # 3章コントローラーにindexアクションを追加するで追記
  end

  def show
    @list = List.find(params[:id])#4章showアクションを作成するで追記
  end

  def edit# 5章で追記
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  def destroy#7章コントローラで追加
    list = List.find(params[:id]) 
    list.destroy
    redirect_to '/lists' 
  end

  private#2章保存機能を追加するで追記（次のendまで）
  def list_params
    params.require(:list).permit(:title, :body,:image)
  end
end
