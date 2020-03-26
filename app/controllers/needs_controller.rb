class NeedsController < ApplicationController

    def index
        @needs = Need.all
    end
    
end
