module Billingleap
  class Category < ActiveRecord::Base
  has_many :items
  end
end
