class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    render({ :template => "listings/all_listings.html.erb"})
  end
end
