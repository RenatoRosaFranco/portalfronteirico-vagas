# frozen_string_literal: true

class ProfilesController <:: ApplicationController
	before_action :authenticate_user!
	before_action :set_profile, only: [:edit, :update]
	respond_to :html, :json, :js

	def show
		@profile = Profile.friendly.find(params[:id])
		redirect_to user_path(@profile.user)
	end

	def edit
		respond_with @profile
	end

	def update
		@profile.update(profile_params)
		flash[:notice] = 'Perfil atualizado com sucesso.'
		redirect_to user_path(@profile.user)
	end

	def destroy
		current_user.destroy
		flash[:notice] = 'Perfil removido com sucesso.'
		redirect_to root_path
	end

	private

	def set_profile
		@profile = current_user.profile
	end

	def profile_params
		params.require(:profile)
			.permit(:logo, :name, :phone, :about, :website, :responsible_name, :city_id)
	end
end
