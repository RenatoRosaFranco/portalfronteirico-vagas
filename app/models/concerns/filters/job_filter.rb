# frozen_string_literal: true

module JobFilter
  include FilterBase

  def self.filter_by_keywords(keywords = nil)
    where("title = ?", keywords).
    or(where("description LIKE ?", "%#{keywords}%"))
  end

  def self.filter_by_occupation_are(occupation)
    where(occupation: occupation)
  end

  def self.filer_by_hiring_type(type)
    where(hiring_type: hiring_type)
  end

  def self.filter_by_location(location = nil)
    where("location LIKE ?", "%#{location}%")
  end
end
