# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grade do
    grade_name "MyString"
    school_id 1
    stream_number 1
    teacher_number 1
    desk_number 1
    year 1
    quarter 1
  end
end
