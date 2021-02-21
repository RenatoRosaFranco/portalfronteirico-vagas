# frozen_string_literal: true

Rails.application.routes.draw do
  
	# Authentication
	# @implemented
  devise_for :users, {}

  # Application
  # @implemented
  root to: 'home#index'

  # Searchs
  # @implemented
  get '/buscar' => 'jobs#search', as: :search_jobs
  
  # Jobs
  # @implemented
  resources :jobs do
   	
   	# Member
   	# @implemented
   	member do
   		get 'active'   => 'jobs#inactive'
   		get 'inactive' => 'jobs#active'
   	end

   	# Collection
   	# @implemented
   	collection do
   		get 'my-jobs' => 'jobs#my_jobs'
   	end
  end

  # Profile
  # @implemented
  resources :profiles, only: [:show, :edit, :update, :edit, :destroy]
end
