Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :wods, !types[Types::WodType] do
    resolve -> (obj, args, ctx) {
      Wod.all
    }
  end
end
