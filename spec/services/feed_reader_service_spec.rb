require './app/services/feed_reader_service'
require 'spec_helper'

RSpec.describe FeedReaderService do
  let(:url) { @url = 'http://feeds.feedburner.com/dspn' }
  let(:feed) { @feed = FeedReaderService.new(url).fetch }

  it "fetch data from designinspiration" do
    expect(feed).not_to eq('')
  end

  it "should have a title" do
    expect(feed.title).not_to be_empty
    puts feed.url
  end
end
