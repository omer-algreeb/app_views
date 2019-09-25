# == Schema Information
#
# Table name: user_messages
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  message_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserMessage < ApplicationRecord
  belongs_to :user
  belongs_to :message
end
