class User < ApplicationRecord
    has_many :orders
    has_many :payment_infos
    has_secure_password
end
