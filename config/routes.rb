Rails.application.routes.draw do
  resources :profiles do
    collection do
      get 'remove_all'
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    #root 'profiles#index'
    root "profiles#index"
end
