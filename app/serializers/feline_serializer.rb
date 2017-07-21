class FelineSerializer < ActiveModel::Serializer
  attributes :name, :age, :coat_color
  belongs_to :breed
end
