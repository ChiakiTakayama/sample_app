Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create' #2章、投稿機能を作ろうで追加
  get 'lists' => 'lists#index' #3章Routingで書き換え
  get 'lists/:id' => 'lists#show'#4章ルーティングで追加
  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
