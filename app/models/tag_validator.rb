class TagValidator < ActiveModel::Validator
  def validate(forum)
    unless ["Fun", "Curiosity", "Movies", "Books", "Comics", "Games", "Music"].include? forum.tag
      forum.errors[:base] << 'Unknown Tag'
    end
  end


end