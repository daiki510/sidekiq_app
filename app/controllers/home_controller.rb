class HomeController < ApplicationController
  def show
    puts "start"
    TestWorker.perform_async("sidekiqのテストだよ")
    puts "end"
  end
end
