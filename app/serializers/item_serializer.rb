class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :description
  belongs_to :list

  def description
    object.description
  end

  def created_at
    object.created_at.strftime('%b %e %Y %H:%M%p')
  end
end
