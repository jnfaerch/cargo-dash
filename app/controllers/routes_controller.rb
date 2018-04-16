class RoutesController < ApplicationController

  def index
    @routes = Route.all
    @shipments = Shipment.all
    @orders = Order.all
    @google_array = google_array
  end

  def show
    @route = Route.find(params[:id])
  end

  private

  def google_array
    @orders.pluck(:time, :amount)
  end

end
