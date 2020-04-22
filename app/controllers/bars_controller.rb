class BarsController < ApplicationController

    def index
        @bars = Bar.all
        render :json => @bars, :include => {:users => {:include => :comments}, :comments => {:all => :comments}}
    end

    def show
        @bar = Bar.find(params[:id])
        render :json => @bar, :include => {:users => {:include => :comments}, :comments => {:all => :comments}}
    end
    
end
