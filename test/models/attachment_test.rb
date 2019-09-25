# == Schema Information
#
# Table name: attachments
#
#  id                :bigint           not null, primary key
#  file_file_name    :string
#  file_content_type :string
#  file_file_size    :bigint
#  file_updated_at   :datetime
#  message_id        :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
