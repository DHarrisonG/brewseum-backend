class BarsController < ApplicationController

    def index
        bars = Bar.all
        render json: bars.to_json(bar_serializer)
    end

    def show
        bar = Bar.find(params[:id])
        render json: bar.to_json(bar_serializer)
    end

    private

    def bar_serializer
        { :only => [:id, :state, :city, :name, :image, :opened, :overview, :latitude, :longitude], 
         :include => {:users => {:only => [:id, :username, :image]}, :comments => {:include => {:user => {:only => [:id, :username, :image]}}}}}
    end
 
    
end
