module ApplicationHelper

	def safe(text)
    	white_list_sanitizer = Rails::Html::WhiteListSanitizer.new
    	white_list_sanitizer.sanitize(text, tags: %w(br b strong p a ol div i em ul li img h1 h2 h3 blockquote hr), attributes: %w(src id class style href))
  	end

  #  	def youtube_url?(str)
  #   	str.match(/youtube/)
  # 	end

  #   def get_url(str)
  #   	URI.extract(str)[0]
  # 	end

  # def embed(youtube_url)
  #   unless youtube_url.nil?
  #     if youtube_url.match(/youtube/)
  #       youtube_id = youtube_url.split('=').last
  #       content_tag(:div, '', class: 'youtube-player', data: { id: youtube_id })
  #       # content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  #     end
  #   end
  # end

end
