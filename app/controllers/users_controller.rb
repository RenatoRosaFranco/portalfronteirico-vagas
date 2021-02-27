# frozen_string_literal: true

class UsersController <:: ApplicationController
	before_action :set_user, only: [:show]
	rescue_from ActiveRecord::RecordNotFound, with: :not_found
	respond_to :html, :json, :js

	def index
		@users = User.filter(filtering_params).page(params[:page]).per(12)
		respond_with @users
	end

	def show
		respond_with @user
	end

	private

	def set_user
		@user = User.find(params[:id])
	end
end
