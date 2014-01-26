class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def get_dynamic_content
    @contact_us_content = DynamicContent.get_value(:contactus)
    @contact_us_address = DynamicContent.get_value(:contactaddress)
    @contact_us_city_state_zip = DynamicContent.get_value(:contactcitystatezip)
    @contact_us_phone = DynamicContent.get_value(:contactphone)
    @contact_us_email = DynamicContent.get_value(:contactemail)
    @footer_about = DynamicContent.get_value(:footerabout)
    @footer_about_title = DynamicContent.get_title(:footerabout)
  end
end
