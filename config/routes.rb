Rails.application.routes.draw do

 resources :students, only: [:index, :edit, :new, :create, :show, :update]
 resources :school_classes, only: [:index, :edit, :new, :create, :show, :update, :delete]

end
