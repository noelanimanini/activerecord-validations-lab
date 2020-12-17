class Post < ActiveRecord::Base
    validates :title, presence: true 
    validates :content, length: { :minimum => 200}
    validates :summary, length: { :maximum => 200}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    include ActiveModel::Validations
    validates_with ClickbaitValidator
end
