class Ribbit < ActiveRecord::Base
  attr_accessible :content, :user_id
  default_scope order: "created_at DESC"  #returned with the newest ribbit

  belongs_to :user

  validate :content, length: {maximum: 140}

end
