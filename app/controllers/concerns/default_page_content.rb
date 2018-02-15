module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "BluTay Portfolio | My Portfolio Website"
    @seo_keywords = "BluTay Portfolio, Ruby on Rails, developers, Full Stack, Web Development"
  end

end