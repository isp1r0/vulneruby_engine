# frozen_string_literal: true

Rails.application.routes.draw do
  mount VulnerubyEngine::Engine => '/vulneruby_engine'
end
