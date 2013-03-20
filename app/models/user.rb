class User < ActiveRecord::Base
  attr_accessible :age, :name, :status
end
