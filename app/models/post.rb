# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer
#

class Post < ActiveRecord::Base
  belongs_to :author
  
  def author_name
    self.author ? self.author.name : nil
  end
end
