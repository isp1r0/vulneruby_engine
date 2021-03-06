# frozen_string_literal: true

require('vulneruby/trigger/xpath_injection')

module VulnerubyEngine
  # Entry point for the Xpath tests
  class XpathInjectionController < ApplicationController
    def index
      render('layouts/vulneruby_engine/xpath_injection/index')
    end

    def run
      @result = Vulneruby::Trigger::XpathInjection.run_nokogiri(params[:xpath_data])
      render('layouts/vulneruby_engine/xpath_injection/run')
    end
  end
end
