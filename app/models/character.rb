class Character < ActiveRecord::Base
    belongs_to :campaign
    belongs_to :player
  end