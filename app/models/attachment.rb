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

class Attachment < ApplicationRecord
  belongs_to :message

  has_attached_file :file
  validates_attachment_content_type :file, content_type: /\A*.*\Z/
  validates_attachment_size         :file, less_than: 20.megabytes

  scope :sorted, lambda { order(id: :desc) }
  scope :newest_first, lambda { order("created_at DESC") }
  scope :search, lambda { |query| where("name LIKE ?", "%#{query}%")}

end
