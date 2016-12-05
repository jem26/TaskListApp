class Task < ActiveRecord::Base
  belongs_to :TaskList
  belongs_to :User

  # jarp: i'd use order for this one as well
  scope :completed, -> {where(is_completed: true).order(created_at: :desc)}
  scope :pending, -> {where(is_completed: false).order(:created_at)}

  validates :title, :due_date, :priority, :TaskList_id, presence: true
  validates :priority, inclusion: { in: 1..10, message: "must be in range 1-10" }
end
