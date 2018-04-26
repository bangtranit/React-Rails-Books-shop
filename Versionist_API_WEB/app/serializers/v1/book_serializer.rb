class V1::BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :weight, :publisher, :language, :pages, :publication_date
end
