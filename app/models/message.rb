class Message < ActiveRecord::Base

  attr_accessible :content
  
  class << self
    def find_or_create_default
      (0..8).each { Message.create } if count == 0

      Message.all
    end
  end

end
