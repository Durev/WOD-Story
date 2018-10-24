Types::WodType = GraphQL::ObjectType.define do
  name 'Wod'
  description 'The Wod type'

  field :id, !types.ID
  field :name, types.String
  field :wod_type, !types.String
end
