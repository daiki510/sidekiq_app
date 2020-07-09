class HelloSidekiqJob < ApplicationJob
  def perform(args)
    p "==================================="
    puts args
    p "==================================="
  end
end
