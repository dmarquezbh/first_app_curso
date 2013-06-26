FirstApp::Application.routes.draw do
 
  devise_for :users

  get "bills/create"

  resources :products


  root :to => 'welcome#index', :as => :index
  match 'about' => 'welcome#about', :as => :about
  match 'contact' => 'welcome#contact', :as => :contact
  match 'black' => 'welcome#black', :via => :get, :as => :black

  resources :users do
    resources :bills
  end

  match 'change_locale/:locale' => 'welcome#change_locale', :as => :change_locale  
end
