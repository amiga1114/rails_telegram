class User < ActiveRecord::Base
  has_many :Messages
end
