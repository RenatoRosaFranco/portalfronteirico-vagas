# frozen_string_literal: true

class JobsController <:: ApplicationController
	before_action :set_job, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
	respond_to :html, :json, :js

	def index
		@jobs = Job.active.page(params[:page]).per(1)
	end

	def new
		@job = Job.new
		respond_with @job
	end

	def show
		respond_with @job
	end

	def create
		@job = current_user.jobs.create(job_params)
		respond_with @job
	end

	def edit
		respond_with @job
	end

	def update
		@job.update(job_params)
		respond_with @job
	end

	def destroy
		@job.destroy
		respond_with @job
	end

	def search
		@jobs = Job.active.by_title(params[:search][:q])
		respond_with @jobs
	end

	def active
		@job = Job.find(params[:id])
		@job.update(status: 'active')
		flash[:notice] = 'Vaga ativada com sucesso.'
		redirect_to job_path(@job)
	end

	def inactive
		@job = Job.find(params[:id])
		@job.update(status: 'expired')
		flash[:notice] = 'Vaga expirada com sucesso.'
		redirect_to job_path(@job)
	end

	def my_jobs
		@jobs = current_user.jobs.active
		respond_with @jobs
	end

	private

	def set_job
		@job = Job.find(params[:id])
	end

	def job_params
		params.require(:job).
			permit(:title, 
						 :description,
						 :occupation_area_id,
						 :hiring_type_id,
						 :salary,
						 :featured,
						 :modality,
						 :location,
						 :how_to_apply,
						 :apply_content,
						 :city_id,
						 :user_id)
	end
end