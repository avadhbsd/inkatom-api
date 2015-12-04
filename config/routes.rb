Rails.application.routes.draw do

namespace :api do
  namespace :v1 do
    resources :posters #, except: [:new, :edit]
    resources :sizes #, except: [:new, :edit]
    resources :papers #, except: [:new, :edit]

  end
end
end
