# frozen_string_literal: true

module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.where(nil)
      filtering_params.each do |key, value|
        results.public_send("filter_by_#{key}", value) if value.present?
      end

      return results
    end
  end
end
