class ListingsController < ApplicationController
  def index
    @q = Listing.ransack(params[:q])
    @listings = @q.result
    render({ :template => "listings/all_listings.html.erb"})
  end
  # def available
  #   @listings = Listing.all.where(:status=>"Available")
  #   render({ :template => "listings/all_listings.html.erb"})
  # end
  # def sold
  #   @listings = Listing.all.where(:status => "Sold")
  #   render({ :template => "listings/all_listings.html.erb"})
  # end 
  def show
    @user_id = session.fetch(:user_id)
    l_id = params.fetch("the_id")
    @listing = Listing.where({:id => l_id }).first
    render({:template => "listings/details.html.erb"})
  end
  def comment
    new_comment = params.fetch("input_body")
    new_bid = params.fetch("input_bid")
    listing_id = params.fetch("input_listing_id")
    a_comment = Comment.new
    a_comment.author_id = @current_user.id
    a_comment.listing_id = listing_id
    a_comment.body = new_comment
    a_comment.bid = new_bid
    a_comment.save
    redirect_to("/listings/"+ a_comment.listing_id.to_s)
end
end
