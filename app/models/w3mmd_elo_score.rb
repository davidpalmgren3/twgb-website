class W3mmdEloScore < ApplicationRecord
  def percent
    wins * 100.0 / games
  end

  def rank
    self.class
      .where(category: category)
      .where("score >= ?", score)
      .count
  end
end
