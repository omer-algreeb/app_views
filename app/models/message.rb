# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  title           :string
#  descrption      :text
#  type_message_id :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Message < ApplicationRecord
  has_many :user_messages
  has_many :users, through: :user_messages

  belongs_to :type_message
  has_many :attachments

  scope :sorted, lambda { order(id: :desc) }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, lambda { |query| where("name LIKE ?", "%#{query}%")}
end
