FirstApp::Application.routes.draw do
 
  get "user/teste"

  root :to => 'welcome#index', :as => :index
  match 'about' => 'welcome#about', :as => :about
  match 'contact' => 'welcome#contact', :as => :contact
  match 'black' => 'welcome#black', :via => :get, :as => :black
  
end
