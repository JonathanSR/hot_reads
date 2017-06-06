require 'rails_helper'

describe "Links API" do
  it "can create a new link" do
    link_params = {url: "https://gist.github.com/case-eee/77380935d29fdb971fd9ab50a43586e3"}

    post "/api/v1/links", params: {link: link_params}
    link = Link.last

    assert_response :success
    expect(response).to be_success
    expect(link.url).to eq(link_params[:url])
    expect(Link.count).to eq(1)
  end

  it "can update link" do
    link_one = Link.create(url: "https://gist.github.com/case-eee/77380935d29fdb971fd9ab50a43586e3", read:2)
    link_params = {url: "https://gist.github.com/case-eee/77380935d29fdb971fd9ab50a43586e3"}
    
    post "/api/v1/links", params: {link: link_params}
    link = Link.last
    
    assert_response :success
    expect(response).to be_success
    expect(link.url).to eq(link_params[:url])
    expect(link.read).to eq(3)
  end

  it "can return a list of the top-10 most-read URLs" do
    create_list(:link, 10, read: 1)
    create_list(:link, 2,read: 10)
    create_list(:link, 5, read: 20)
    create_list(:link, 2, read: 5)
    get '/api/v1/links'

    expect(response).to be_success

    links = JSON.parse(response.body)

    expect(links.count).to eq(10)

    link = links.first

    expect(link).to be_a(Hash)
    expect(link).to have_key('url')
    expect(link).to have_key('read')
  end
end