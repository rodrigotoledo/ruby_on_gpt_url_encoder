class UrlController < ApplicationController
  before_action :set_url, only: [:show, :redirect_to_original_url]

  def index
    @urls = Url.order(created_at: :desc).limit(10)
  end

  def show
  end

  def redirect_to_original_url
    @url.update(clicked: @url.clicked+1)
    redirect_to @url.original_url, allow_other_host: true
  end

  private

  def set_url
    @url = Url.find_by_code(params[:code])
    head 404 if @url.blank?
  end
end
