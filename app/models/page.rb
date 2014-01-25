class Page < ActiveRecord::Base
  attr_accessible :content, :name, :page_image, :permalink

  mount_uploader :page_image, PageImageUploader

  validates_uniqueness_of :permalink

  def to_param
    permalink
  end
end