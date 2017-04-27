class SectionsController < ApplicationController
  layout "admin"
  def index
    @sections = Section.where(page_id: params[:id]).sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
    @pages = Page.order('position ASC')
    @section_count = Section.count + 1
  end
  def create
    @section = Section.new(section_params)
    if @section.save!
      flash[:notice] = "You have added a new section"
      redirect_to sections_index_path
      else
        flash[:notice] = "err Refill the form"
        @pages = Page.order('position ASC')
        @section_count = Section.count + 1
       render :new
      end 
  end
  def edit
    @section = Section.find(params[:id])
    @pages = Page.all
    @section_count = Section.count
  end
  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)

      flash[:notice] = "Your section have been updated"
      redirect_to sections_show_path(@section.id)
    else
    @pages = Page.order('position ASC')
    @section_count = Section.count
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
   params.require(:section).permit(:page_id,:section_id, :name,:permalink, :position, :visible, :content_type, :content)
  end
end