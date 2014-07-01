class Ribbit < ActiveRecord::Base
  attr_accessible :content, :user_id
  default_scope order: "created_at DESC"  #returned with the newest ribbit

  validate :content, length: {maximum: 140}

end
