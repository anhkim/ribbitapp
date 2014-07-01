Ribbitapp::Application.routes.draw do
  resources :sessions
  resources :users

  get 'logout', to: 'sessions#destroy', as: 'logout'


  root to: "users#new"



  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
