# frozen_string_literal: true

class LoginUser < ApplicationRecord
  def self.find_or_create_from_auth_hash!(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    nickname = auth_hash[:info][:nickname]
    image_url = auth_hash[:info][:image]

    LoginUser.find_or_create_by!(provider:, uid:) do |user|
      user.name = nickname
      user.image_url = image_url
    end
  end
end
