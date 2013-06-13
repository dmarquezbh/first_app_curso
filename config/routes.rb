FirstApp::Application.routes.draw do
  match 'black' => 'welcome#black', :via => :get, :as => :black
  
  root :to => 'welcome#index'

  
end
