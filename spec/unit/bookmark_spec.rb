require 'bookmark'

describe Bookmark do
  context 'Returns a string of bookmarks' do
    it 'creates a string of bookmarks and returns these' do
      bookmark_list = Bookmark.new

      expect(bookmark_list.all).to eq(["bookmark 1", "bookmark 2","bookmark 3", "bookmark 4"])
    end
  end
end