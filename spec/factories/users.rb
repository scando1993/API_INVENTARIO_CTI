FactoryGirl.define do
  factory :user do
    email "MyString"
    institutional_email "MyString"
    firstname "MyString"
    lastname "MyString"
    password_digest "MyString"
    function "MyString"
    phone "MyString"
    remember_me_token false
    reset_password_token false
    reset_password_at "2016-05-31 21:25:40"
    sign_in_count 1
    gender "MyString"
    cellphone "MyString"
  end
end
