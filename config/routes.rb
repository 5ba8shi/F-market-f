Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'

  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get 'step4' # ここで、入力の全てが終了する
      get 'done' # 登録完了後のページ
    end
  end
  get '/mypage', to: 'items#mypage'
  get '/registration', to: 'items#registration'
  get '/login', to: 'items#login'
  resources :items, only: [:new]
end
