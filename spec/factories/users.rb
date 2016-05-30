FactoryGirl.define do
  factory :user do
    email "tuber@example.com"
    password "password"
    password_confirmation "password"
    role "member"
  end
end
