factory :post do
  author
  # instead of
  # association :author, factory: :user
  title "How to read a book effectively"
  body  "There are five steps involved."
end
