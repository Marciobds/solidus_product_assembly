# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :assemblies_parts, only: [] do
        collection do
          post :update_positions
        end
      end
      
      resources :parts do
        member do
          post :select
          post :remove
          post :set_count
        end
        collection do
          post :available
          post :update_positions
          get  :selected
        end
      end
    end
  end
end
