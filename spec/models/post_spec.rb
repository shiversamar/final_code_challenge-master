
require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:post) {create(:current_user.posts.build)}

  it 'has title and body' do
    expect(post.title).to_not be_nil
    expect(post.content).to_not be_nil
  end

  describe 'body association' do
    let(:body_1) { build(:body, :no_post)}
    let(:body_2) { build(:body, :no_post, body: "Before they sold out banjo etsy yr, vexillologist ...")}
    it 'list body in the they were created' do
      body_1.post_id = post.id
      body_1.save!
      body_2.post_id = post.id
      body_2.save!
      expect(post.body).to eq([body_1, body_2])
    end
  end

end#rspec
