Rails.application.routes.draw do
  get 'podcasts' => 'podcasts#index'
  get 'podcasts/view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
