class GraphqlBookstoreSchema < GraphQL::Schema

  mutation(Types::MutationType)
  query(Types::QueryType)
  # GraphQL::Batch setup:
  use GraphQL::Batch
end
