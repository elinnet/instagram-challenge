class LikesController < ApplicationController

  def create
    @picture = Picture.find(params[:picture_id]) #find the id of the picture
    @picture.likes.create #create a like against the picture

    render json: {new_like_count: @picture.likes.count}
    #count the likes on the picture, make this the value against the key of 'new_like_count', render this in json?

  end

end
