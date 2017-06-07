require 'rails_helper'

describe "user_visits_index_page" do 
  it "sees a list of top 10 links" do
    links_one = create_list(:link, 10, read: 1)
    link_two = Link.create(url:"https://gist.github.com/case-eee/77380935d29fdb971fd9ab50a43586e3", read:10)
    link_three = Link.create(url:"https://gist.github.com", read:5)
    
    visit ('/')

   links = Link.top10

   top_10_links = links.map do |link|
                    link.url
                  end

    expect(link_two.url).to eq(top_10_links[0])
    expect(link_three.url).to eq(top_10_links[1])

    expect(page).to have_content("Hot Reads")
    expect(page).to have_content("https://gist.github.com/case-eee/77380935d29fdb971fd9ab50a43586e3")
    expect(page).to have_content("https://gist.github.com")
  end
end
