class TestWorker < ApplicationController
  include Sidekiq::Worker
  sidekiq_options queue: :test, retry: 5

  def perform(title)
    p "================================"
    p 'work: title=' + title
    p "================================"
  end
end