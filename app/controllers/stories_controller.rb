  class StoriesController < ApplicationController
    # before_action :confirm_logged_in
    layout "sitelayout"
    # GET /instructments
    def index
      @stories = Story.sorted
    end

    # GET /instructments/1
    def show
      @story = Story.find(params[:id])
    end

    # GET /instructments/new
    def new
       @story = Story.new
        @story_count = Story.count + 1
    end

    # GET /instructments/1/edit
    def edit
      @story = Story.find(params[:id])
      @story_count = Story.count
    end
     def update
      @story = Story.find(params[:id])
      if @story.update_attributes(story_params) 
      flash[:notice] = "Your '#{@story.name}' have been updated successfully"           
       redirect_to stories_path(@story.id)                              
     else
       
       @story_count = Story.count
       render :edit

     end
    end

    # POST /instructments
    def create
       @story = Story.new(story_params)

      if @story.save
        flash[:notice] =  "Ahh! your story have been added to history!"
         redirect_to stories_path
      else
         @story_count = Story.count + 1
        render :new
      end
    end

    # PATCH/PUT /instructments/1
     def delete
       @story = Story.find(params[:id])
      #@instructment.destroy
     # redirect_to instructments_url, notice: 'Instructment was successfully destroyed.'
    end
   

    # DELETE /instructments/1
    def destroy
       story = Story.find(params[:id]).destroy
        flash[:notice] = "Your story have been erase from history" 
       redirect_to story_index_path
      
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def story_params
        params.require(:story).permit(:name,:position,:visible)
      end

      # Only allow a trusted parameter "white list" through.
      #def instructment_params
        #params.fetch(:instructment, {})
      #end
  end
