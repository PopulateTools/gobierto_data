# frozen_string_literal: true

require "elasticsearch"

module GobiertoData
  module GobiertoBudgets
    class SearchEngineWriting
      def self.client
        @client ||= Elasticsearch::Client.new log: false, url: ENV.fetch("ELASTICSEARCH_WRITTING_URL")
      end
    end
  end
end
