require 'rails_helper'

describe Link, type: :model do
 context 'validations' do
   it 'valid attributes' do
     link = Link.create(url:'http://localhost:3000')

     expect(link).to be_valid
    end

    it 'unique attributes' do
      link_one = Link.create(url:'http://localhost:3000')
      link_two = Link.create(url:'http://localhost:3000')
    
      expect(link_two).to_not be_valid
    end
    it 'invalid attributes' do
     link = Link.create(url:'localhost:3000')

     expect(link).to_not be_valid
    end
  end

  context 'methods' do
    it "can return top ten links" do
      link_zero = Link.create(url:'http://localhost:3000', read: 22)
      links_one = create_list(:link, 10, read: 20)
      link_two = Link.create(url:'http://localhost:3000', read: 1)
      top10 = Link.top10
      refute top10.include?(link_two)
      assert top10.include?(link_zero)
    end
  end
end
