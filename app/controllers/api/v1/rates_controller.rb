class Api::V1::RatesController < ApplicationController
    def index
        @rates = Rate.all
        render json: @rates  
     end
end
