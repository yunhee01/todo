Rails.application.routes.draw do
resources :todo_lists do
  #resources :toto_lists
   resources :todo_items
  end
root "todo_lists#index"
end
