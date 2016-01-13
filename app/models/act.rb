class Act < ActiveRecord::Base

validates :name, presence: true
validates :name, uniqueness: true 
belongs_to :event

has_many :timeslots, dependent: :destroy
has_many :venues, through: :timeslots

has_and_belongs_to_many :keywords

def html
  renderer = Redcarpet::Render::HTML.new(render_options = {})
  markdown = Redcarpet::Markdown.new(renderer, extensions = {})
  markdown.render(self.description).html_safe
end

end
