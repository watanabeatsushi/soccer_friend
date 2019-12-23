class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User', foreign_key: :organizer_id
  has_many :participant_managements, dependent: :destroy
  has_many :participant_users, through: :participant_managements, source: :participant
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :taggings, allow_destroy: true
end
