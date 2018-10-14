Rails.application.routes.draw do
  resources :students, only: [:new,:create,:update,:edit,:show]
  resources :school_classes, only: [:new,:create,:update,:show,:edit]
end
