class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :user, presence: true

  private

end
