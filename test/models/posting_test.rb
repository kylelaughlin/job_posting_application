require 'test_helper'

class PostingTest < ActiveSupport::TestCase
  test "this should work under normal circumstances" do
    @posting = postings(:one)
    assert(@posting.valid?, "This should be valid under normal circumstances")
  end

  test "company name must be present" do
    @posting = postings(:one)
    @posting.company = nil
    refute(@posting.valid?, "This should be invalid without company name")
  end

  test "title must be present" do
    @posting = postings(:one)
    @posting.title = nil
    refute(@posting.valid?, "This should be invalid without title")
  end

  test "description must be present" do
    @posting = postings(:one)
    @posting.description = nil
    refute(@posting.valid?, "This should be invalid without description")
  end

  test "location must be present" do
    @posting = postings(:one)
    @posting.location = nil
    refute(@posting.valid?, "This should be invalid without location")
  end

end
