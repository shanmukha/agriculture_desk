# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :community do
    name "MyString"
    community_type ""
    status false
    area ""
    community_level ""
    description "MyText"
    code "MyString"
  end
end
