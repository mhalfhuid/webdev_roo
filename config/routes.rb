# resource routes always plural!!!!
Rails.application.routes.draw do
  resources :connections

  resources :formats do
    resources :format_versions do
      resources :dim_formats do
        resources :format_item_links
      end
      resources :format_items do
        resources :format_item_links
      end
    end
  end

  resources :dimensions do
    resources :dim_items do
      resources :format_item_links
    end
    resources :dim_formats
  end
end
