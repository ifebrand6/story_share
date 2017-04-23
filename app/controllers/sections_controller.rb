class SectionsController < ApplicationController
  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end
  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "You have added a new section"
      redirect_to sections_index_path
      else
      render new
      end 
  end
  def edit
    @section = Section.find(params[:id])
  end
  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "Your section have been updated"
      redirect_to sections_path(@section.id)
    else
      render :edit
    end
  end

  def delete
    @section = Section.find(params[:id])
  end
  def destroy
    section = Section.find(params[:id]).destroy
    flash[:notice] = "Your section have been erase"
    redirect_to sections_index_path
  end
  private
  def section_params

    params.require(:section).permit(:name,:visible,:position)
  end
end
