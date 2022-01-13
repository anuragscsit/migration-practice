class SemestersController < ApplicationController

	  before_action :set_semester, only: %i[ show edit update destroy ]

	def index
		@semester = Semester.all
	end

	def show
	end

	def new
		@semester = Semester.new
	end

	def create
		@semester = Semester.new(semester_params)
		if @semester.save
			redirect_to semesters_path
		else
			render :new
		end
	end

	def edit
	end

	def update
      if @semester.update(semester_params)
        redirect_to semester_path(@semester)
      else
        render :edit
      end
  	end

	def destroy
		@semester.destroy
		redirect_to semesters_url
	end

	private 

	def set_semester
      @semester = Semester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_params
      params.require(:semester).permit(:sem)
    end

end
