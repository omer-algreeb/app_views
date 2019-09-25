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

require 'test_helper'

class UserMessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
