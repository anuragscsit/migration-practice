class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]

  # GET /courses or /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1 or /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    @course = Course.new(course_params)

      if @course.save
        redirect_to courses_path
      else
        render :new
      end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
      if @course.update(course_params)
        redirect_to course_path(@course)
      else
        render :edit
      end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:name, :duration)
    end
end
