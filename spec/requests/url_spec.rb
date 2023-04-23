require 'rails_helper'

RSpec.describe "Urls", type: :request do
  describe "GET last 10 urls" do
    before do
      20.times.each do
        Url.create!(original_url: Faker::Internet.url)
      end
    end
    it "returns success" do
      get root_path
      expect(response).to have_http_status(:success)
      expect(assigns(:urls).count).to eql(10)
    end
  end

  describe "GET detail of url" do
    let(:url){Url.create!(original_url: Faker::Internet.url)}
    it "returns success" do
      get url_path(code: url.code)
      expect(response).to have_http_status(:success)
    end
  end

  describe "Redirect to url" do
    let(:url){Url.create!(original_url: Faker::Internet.url)}
    it "redirect with success" do
      get redirect_to_original_url_path(code: url.code)
      expect(response).to redirect_to(url.original_url)
    end

    it 'sum when is visited' do
      original_clicked = url.clicked
      get redirect_to_original_url_path(code: url.code)
      url.reload
      expect(url.clicked).to eql(original_clicked+1)
    end
  end
end
