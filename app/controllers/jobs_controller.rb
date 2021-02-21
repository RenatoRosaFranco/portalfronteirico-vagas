# frozen_string_literal: true

class JobsController < ApplicationController
	before_action :set_job, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

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
		@job.update(status: 'active').save
		flash[:notice] = 'Vaga ativada com sucesso.'
		respond_with @job
	end

	def inactive
		@job.update(status: 'expired').save
		flash[:notice] = 'Vaga expirada com sucesso.'
		respond_with @job
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
						 :modality,
						 :location,
						 :how_to_apply,
						 :apply_content,
						 :city_id,
						 :user_id)
	end
end