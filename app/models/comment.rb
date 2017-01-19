class Comment < ApplicationRecord
  belongs_to :BlogPost
  belongs_to :user


end
