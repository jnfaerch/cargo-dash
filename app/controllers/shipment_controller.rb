class ShipmentController < ApplicationController

  def index
    @shipments = Shipment.all
  end

end
