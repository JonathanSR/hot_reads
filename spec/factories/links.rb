FactoryGirl.define do
  factory :link do
    sequence :url do |n|
      "http://github#{n}.com"
    end
  end
end