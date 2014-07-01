class RibbitsController < ApplicationController
  def create
    ribbit = Ribbit.new(params[:ribbit])
    ribbit.user_id = current_user.id
    flash[:error] = "Your ribbit was too long." unless ribbit.save
    redirect_to root_url
  end
end
