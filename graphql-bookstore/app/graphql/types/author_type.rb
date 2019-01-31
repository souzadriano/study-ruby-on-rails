module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :age, Integer, null: true
    field :books, [BookType], null: true, resolve: -> (author, args, context) {Loaders::AssociationLoader.for(Author, :books).load(author)}
  end
end
