class RatesController < ApplicationController
def index
  @rates=Rate.all 
end
  

def new
@rate=Rate.new
 
end
 
def create
    @rate = Rate.new(rate_params)
    if @rate.save
      redirect_to "index"

       end
end

private
      def rate_params
        params.require(:rate).permit(:type_vehicle,:rate)
      end
end
