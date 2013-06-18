FirstApp::Application.routes.draw do
 
  resources :products


  root :to => 'welcome#index', :as => :index
  match 'about' => 'welcome#about', :as => :about
  match 'contact' => 'welcome#contact', :as => :contact
  match 'black' => 'welcome#black', :via => :get, :as => :black

  resources :users
  match 'change_locale/:locale' => 'welcome#change_locale', :as => :change_locale  
end
