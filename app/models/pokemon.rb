class Pokemon < ApplicationRecord
end
class Pokemon < ApplicationRecord
  after_create :log_pokemon_creation
  after_update :log_pokemon_update
  after_destroy :log_pokemon_destruction

  private

  def log_pokemon_creation
    Rails.logger.info("Pokemon created: #{self.name}")
  end

  def log_pokemon_update
    Rails.logger.info("Pokemon updated: #{self.name}")
  end

  def log_pokemon_destruction
    Rails.logger.info("Pokemon destroyed: #{self.name}")
  end
end