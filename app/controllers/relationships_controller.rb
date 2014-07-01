class RelationshipsController < ApplicationController
  def create
    relationship = Relationship.new(params[:relationship])
    relationship.follower = current_user

    if relationship.save
      redirect_to relationship.followed
    else
      flash[:error] = "Opps.  You cannot follow."
      redirect_to relationship.followed
    end
  end

    def destroy
      relationship = Relationship.find(params[:id])
      user = relationship.followed
      relationship.destroy
      redirect_to user
    end
end
