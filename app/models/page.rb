class Page < ActiveRecord::Base
  attr_accessible :content, :name, :page_image, :permalink, :delete_page_image, :remove_page_image

  after_initialize { self.delete_page_image == false }
  after_save :check_delete_image

  mount_uploader :page_image, PageImageUploader

  validates_uniqueness_of :permalink

  def to_param
    permalink
  end

  def check_delete_image
     if self.delete_page_image == true
        remove_page_image!
        self.page_image= ""
     end
  end

end
