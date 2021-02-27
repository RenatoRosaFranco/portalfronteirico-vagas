# frozen_string_literal: true

Rails.application.routes.draw do

	# Authentication
	# @implemented
  devise_for :users, {
  	# some code here
  }

  # Application
  # @implemented
  root to: 'home#index'

  # Searchs
  # @implemented
  get '/buscar' => 'jobs#search', as: :search_jobs

  # Jobs
  # @implemented
  resources :users
  resources :job_applications, only: [:create]
  resources :jobs do

   	# Member
   	# @implemented
   	member do
   		post 'active'   => 'jobs#active'
   		post 'inactive' => 'jobs#inactive'
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

  # Dashboard
  # @implemented
  namespace :dashboard, constraint: { subdomain: 'dashboard' } do
    get '/' => 'home#index'
    get '/jobs' => 'jobs#index'
    get '/invoices' => 'invoices#index'
  end
end
