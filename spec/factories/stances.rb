# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stance do
    content "MyString"
    citation "MyString"
    citation_date "2012-09-06 13:39:14"
    approved false
    politician
    issue
  end
end
