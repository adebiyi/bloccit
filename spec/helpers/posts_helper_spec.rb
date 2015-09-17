require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PostsHelper. For example:
#
# describe PostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PostsHelper, type: :helper do
  #pending "add some examples to (or delete) #{__FILE__}"

  let(:post) {Post.create!(title: "New Post Title", body: "New Post Body")}

  describe "#post_title" do
    context "when the post is the 5th post" do
      it "returns CENSORED" do
        expect(helper.post_title(post,5)).to eq("CENSORED")
      end
    end
  end

  describe "#post_title" do
    context "when the post is not the 5th post" do
      it "returns the post title" do
        post.title = "My Fair Lady"
        expect(helper.post_title(post,23)).to eq("My Fair Lady")
      end
    end
  end

end
