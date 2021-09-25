class CategoriesService
  require 'httparty'

  def initialize(params = {})
    @base_url = params[:base_url] || ENV['CATEGORIES_BASE_URL']
  end

  # 🤮
  def category_from_title(title)
    for category in categories do
      keywords = category["keywords"].split(',')
      title_words = title.downcase.split(' ')

      for keyword in keywords do
        if title_words.include? keyword
          return category["name"]
          #break
        end
      end
    end

    return nil
  end

  def categories
    HTTParty.get("#{@base_url}/categories")
  end
end
