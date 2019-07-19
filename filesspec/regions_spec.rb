require "spec_helper"

describe "Authentication" do
  before { @browser.goto 'www.regions.com'}

  it "successful" do
  	@browser.text_field(data-regions-search: 'input').set 'test'
    @browser.button(type: 'submit').click

    expect(@browser.url).to eq 'https://www.regions.com/SearchResults?searchTerm=test'
  end
end
