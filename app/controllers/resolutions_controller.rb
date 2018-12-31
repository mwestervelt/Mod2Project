class ResolutionsController < ApplicationController


  def index
    @resolutions = Resolution.includes(:hearts).all
  end

  def show
    @hearts = Heart.all
    @resolutions = Resolution.includes(:hearts).all
    @resolution = Resolution.find(params[:id])
  end

  def new
    @tags = Tag.all
    @resolution = Resolution.new
  end

  def create
    @tags = Tag.all
    @resolution = Resolution.create(resolution_params)
    redirect_to @resolution
  end

  def edit
     @resolution = Resolution.find(params[:id])
  end

  def update
    @resolution = Resolution.find(params[:id])
    @resolution.update(resolution_params)
    redirect_to @resolution
  end

  def destroy
    @resolution = Resolution.find(params[:id])
    @resolution.destroy
    redirect_to resolutions_path
  end

private

def resolution_params
  params.require(:resolution).permit(:title, :description, :end_date, :done)
end


end
