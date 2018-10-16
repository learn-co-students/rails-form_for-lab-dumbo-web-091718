Rails.application.routes.draw do
  resources :school_classes, :students, only: [:new, :create, :show, :edit, :update]
end
