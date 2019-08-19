class User < ActiveRecord::Base
  attributes :id, :created_at, :updated_at, :full_name, :email

  has_many :lists
  has_many :items, through: :lists


  def full_name
    object.full_name
  end

  def email
    object.email
  end

end
