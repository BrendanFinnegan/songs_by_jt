Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :songs, only: [:index, :show]

  resources :super_fans, only: [:index, :destroy] do
    resources :songs, only: [:show]
  end
  
  resources :reviews, only: [:create]

  get '/song/top_charts', to: 'songs#chart_topper'

end
