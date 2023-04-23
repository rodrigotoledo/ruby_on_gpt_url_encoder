require 'uri'
class Url < ApplicationRecord
  validates :original_url, presence: true
  validates :code, presence: true, uniqueness: true
  validate :validate_original_url
  before_validation :generate_code

  private

  def generate_code
    begin
      self.code = SecureRandom.alphanumeric(8)
    end while self.class.exists?(code: code)
  end

  def validate_original_url
    uri = URI.parse(self.original_url)
    valid_uri = uri.is_a?(URI::HTTP) || uri.is_a?(URI::HTTPS)

    errors.add(:original_url, 'is not a valid URL') unless valid_uri
  rescue URI::InvalidURIError
    errors.add(:original_url, 'is not a valid URL') unless valid_uri
  end
end
