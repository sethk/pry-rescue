require 'pry-rescue'
class Rake::Application
  alias_method :top_level_without_rescue, :top_level

  def top_level
    Pry::rescue do
      top_level_without_rescue
    end
  end
end
