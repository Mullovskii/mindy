class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_menu,  :able
  # before_action :authenticate_user!
  before_action :prepare_meta_tags, if: "request.get?"

  def load_menu
  	@main_sections = Section.where(parent_section_id: nil)
  	@fields = Field.all
  end

  def prepare_meta_tags(options={})
    site_name   = "Mindy. Know more"
    title       = [controller_name, action_name].join(" ")
    description = "Профессиональнее каждый день. Лучшие идеи и практики от профессионалов вашей отрасли. "
    image       = options[:image] || "your-default-image-url"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[маркетинг менеджмент консалтинг финансы бизнес бизнес-проект стартап анализ рынок инвестиции знания опыт отрасль excel большая тройка профессия экспертиза управление портфелем ],
      twitter: {
        site_name: site_name,
        site: '@thecookieshq',
        card: 'summary',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end

  private

  def able
  	@able = proc { current_user.man? }
  end

  

end
