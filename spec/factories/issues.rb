# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :issue do
    sequence(:title) {|n| "This is a title #{n}"}
  end
end
