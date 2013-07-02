TurismoApp::Application.routes.draw do

  namespace :servico do
    resources :eventos
  end

  namespace :servico do
    resources :passeios
  end

  namespace :servico do
    resources :cruzeiros
  end

  namespace :servico do
    resources :pacotes
  end
  resources :pessoa_fisicas
  resources :pessoa_juridicas
  devise_for :users

  resources :vendas
  get '/relatorio_por_cliente' => 'vendas#relatorio_por_cliente'
  resources :users

  #get '/vendas/:relatorio_por_cliente', :controller=>"vendas", :action=>"relatorio_por_cliente"
  #get '/vendas/:relatorio_por_servico', :controller=>"vendas", :action=>"relatorio_por_servico"

  #devise_for :users, :controllers => { :registrations => "registrations" } do
  #  get "cadastro/:tipo" => 'registrations#new'
  #  get '/users/sign_out' => 'devise/sessions#destroy'
  #end
  #devise_scope :user do
  #  authenticated :user do
  #    root :to => "home#index"
  #  end
    #root :to => "devise/sessions#new"
    #get "sign_in", :to => "devise/sessions#new"
    #get "sign_out", :to => "devise/sessions#destroy"
  #  get "cadastro/:tipo", :to => 'registrations#new'
  #end



  root to: "home#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
