class Task < ActiveRecord::Base
  belongs_to :owner, :class_name=> "User", foreign_key: :owner_id
  belongs_to :assignee, :class_name=> "User", foreign_key: :assignee_id

  validates :owner_id, presence:true
  validates :summary, presence:true, length: { minimum: 5 }
  default_scope -> { order(created_at: :desc) }

end
