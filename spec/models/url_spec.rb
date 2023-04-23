require 'rails_helper'

RSpec.describe Url, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:original_url) }
  end

  describe 'generate_code' do
    let(:url) { Url.new(original_url: Faker::Internet.url)}
    it 'generate unique code' do
      expect(url.code).to eql(nil)
      url.save!
      expect(url.code).not_to eql(nil)
    end
  end

  context "when have an invalid original_url" do
    let(:url) { Url.new }
    describe 'invalid original_url' do
      it 'return invalid message' do
        expect(url.valid?).to be_falsy
        expect(url.errors[:original_url]).to include('is not a valid URL')
      end
    end
  end
  
end
