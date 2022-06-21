Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'lists/new'
  post 'lists' => 'lists#create' #2章、投稿機能を作ろうで追加
  get 'lists' => 'lists#index' #3章Routingで書き換え
  get 'lists/:id' => 'lists#show',as:'list'#4章ルーティング(名前付きルートも後から追記)で追加
  get 'lists/:id/edit' => 'lists#edit',as:'edit_list'#5章ルーティングで追記
  patch 'lists/:id' => 'lists#update',as:'update_list'#5章更新機能を追加で追加
 delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'#7章削除機能作成の流れで追加
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
