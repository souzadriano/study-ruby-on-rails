module Types
  class BookType < Types::BaseObject
    field :id, ID, null: true
    field :title, String, null: true
    field :genre, String, null: true
    field :author_id, ID, null: true
    field :author, AuthorType, null: false
  end
end
