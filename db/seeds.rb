# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Сферы
Section.new(name: 'Финансы').save(validate: false)
Section.new(name: 'Менеджмент').save(validate: false)
Section.new(name: 'Маркетинг').save(validate: false)
Section.new(name: 'PR').save(validate: false)
Section.new(name: 'Предпринимательство').save(validate: false)
Section.new(name: 'IT').save(validate: false)
Section.new(name: 'Отношения с госорганами').save(validate: false)
Section.new(name: 'Микроэкономика').save(validate: false)
Section.new(name: 'Макроэкономика').save(validate: false)
Section.new(name: 'Международные отношения').save(validate: false)
Section.new(name: 'Технологии').save(validate: false)
Section.new(name: 'HR').save(validate: false)
Section.new(name: 'Аудит').save(validate: false)
Section.new(name: 'Право').save(validate: false)

# Подразделы
Section.new(name: 'Корпоративные финансы', parent_section_id: 1).save(validate: false)
Section.new(name: 'Риски', parent_section_id: 1).save(validate: false)
Section.new(name: 'Финансовая отчетность', parent_section_id: 1).save(validate: false)
Section.new(name: 'Бюджетирование', parent_section_id: 1).save(validate: false)
Section.new(name: 'Финансовое управление', parent_section_id: 1).save(validate: false)
Section.new(name: 'Инвестиции', parent_section_id: 1).save(validate: false)
Section.new(name: 'Трейдинг', parent_section_id: 1).save(validate: false)
Section.new(name: 'Ценные бумаги', parent_section_id: 1).save(validate: false)
Section.new(name: 'Рынки капитала', parent_section_id: 1).save(validate: false)
Section.new(name: 'Money market', parent_section_id: 1).save(validate: false)
Section.new(name: 'Исследование рынка', parent_section_id: 3).save(validate: false)
Section.new(name: 'Коммуникации', parent_section_id: 3).save(validate: false)
Section.new(name: 'Управление портфолио', parent_section_id: 3).save(validate: false)
Section.new(name: 'Бренд-менеджмент', parent_section_id: 4).save(validate: false)
Section.new(name: 'Управление проектами', parent_section_id: 2).save(validate: false)
Section.new(name: 'Антикризисное управление', parent_section_id: 2).save(validate: false)
Section.new(name: 'Корпоративное управление', parent_section_id: 2).save(validate: false)
Section.new(name: 'Knowledge management', parent_section_id: 2).save(validate: false)
Section.new(name: 'Рекрутмент', parent_section_id: 12).save(validate: false)
Section.new(name: 'Развитие персонала', parent_section_id: 12).save(validate: false)
Section.new(name: 'Налогообложение', parent_section_id: 14).save(validate: false)
Section.new(name: 'Интеллектуальное право', parent_section_id: 14).save(validate: false)
Section.new(name: 'Слияния и поглощения', parent_section_id: 14).save(validate: false)
Section.new(name: 'Арбиртраж', parent_section_id: 14).save(validate: false)
Section.new(name: 'Страхование', parent_section_id: 14).save(validate: false)
Section.new(name: 'GR', parent_section_id: 7).save(validate: false)
Section.new(name: 'Закупки', parent_section_id: 7).save(validate: false)
Section.new(name: 'Бизнес планирование', parent_section_id: 5).save(validate: false)
Section.new(name: 'Регистрация', parent_section_id: 5).save(validate: false)
Section.new(name: 'Стартап', parent_section_id: 5).save(validate: false)



#Отрасли
Field.create(name: 'Банковское дело')
Field.create(name: 'Консалтинг')
Field.create(name: 'Фармацевтика')
Field.create(name: 'Логистика')
Field.create(name: 'Недвижимость')
Field.create(name: 'Медиа')
Field.create(name: 'Веб-сервисы')
Field.create(name: 'Нефть и газ')
Field.create(name: 'Микроэлектроника')
Field.create(name: 'Машиностроение')
Field.create(name: 'Энергетика')
Field.create(name: 'Химическая промышленность')
Field.create(name: 'Природные ресурсы')
Field.create(name: 'Сельское хозяйство')
Field.create(name: 'Госслужба')
Field.create(name: 'Высокие технологии')
Field.create(name: 'Ритейл')
Field.create(name: 'Пищевая промышленность')
Field.create(name: 'HoReCa')


