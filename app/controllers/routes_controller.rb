class RoutesController < ApplicationController

  def index
    @routes = Route.all
    @shipments = Shipment.all
  end

  def show
    @route = Route.find(params[:id])
  end

end
