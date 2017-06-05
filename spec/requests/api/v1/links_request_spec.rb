require 'rails_helper'

describe "Links API" do
  it "can create a new link" do
    link_params = {url: "https://gist.github.com/case-eee/77380935d29fdb971fd9ab50a43586e3"}

    post "/api/v1/links", params: {link: link_params}
    link = Link.last

    assert_response :success
    expect(response).to be_success
    expect(link.url).to eq(link_param[:url])
    expect(Link.count).to eq(1)
  end
end