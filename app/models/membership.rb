class Membership < ApplicationRecord
    validates :client_id, uniqueness: { scope: :gym_id }
    validates :client_id, presence: true
    validates :gym_id, presence: true
    validates :charge, presence: true
    
    belongs_to :gym
    belongs_to :client 
end
