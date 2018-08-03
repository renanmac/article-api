Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    scope module: 'v1' do
      root 'articles#index'    
    end
  end

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
end
