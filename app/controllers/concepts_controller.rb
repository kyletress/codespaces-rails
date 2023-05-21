class ConceptsController < ApplicationController
    def index
        @concepts = Concept.all
    end

    def new
        @concept = Concept.new
    end

    def show
        @concept = Concept.find(params[:id])
    end

    def create
        @concept = Concept.new(concept_params)
        if @concept.save
            redirect_to concepts_path
        else
            render :new
        end
    end

    def edit 
        @concept = Concept.find(params[:id])
    end

    def update 
        @concept = Concept.find(params[:id])
        if @concept.update(concept_params)
            redirect_to concepts_path
        else
            render :edit
        end
    end

    def destroy 
        @concept = Concept.find(params[:id])
        @concept.destroy
        redirect_to concepts_path
    end

    private

    def concept_params
        params.require(:concept).permit(:name, :unit_id)
    end

end
