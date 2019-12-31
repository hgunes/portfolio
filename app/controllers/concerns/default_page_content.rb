module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title
  end

	def set_title
    @page_title = 'Harun Gunes | Portfolio'
    @seo_keywords = 'Harun Gunes'
  end
  
end