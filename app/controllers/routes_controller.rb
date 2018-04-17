class RoutesController < ApplicationController

  def index
    @routes = Route.all
    @shipments = Shipment.all
    @orders = Order.all
    @customers = Customer.all
    @new_customers = new_customers
    @customer_requests = customer_requests
    @google_array = google_array
  end

  def show
    @route = Route.find(params[:id])
  end

  private

  def new_customers
    b = @customers.select { |c| c.name != 'Guest' and c.login == true }
  end

  def customer_requests
    a = @customers.select { |c| c.name == 'Guest' and c.login == false }
    a.count
  end

  def google_array
    @orders.pluck(:time, :amount)
  end

end
