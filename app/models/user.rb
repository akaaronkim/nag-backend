class User < ApplicationRecord
    has_many :orders
    has_many :payment_infos
end
