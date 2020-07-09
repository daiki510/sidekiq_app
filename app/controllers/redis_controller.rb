class RedisController < ApplicationController
  def show
    @redis = Redis.current
    @redis.set('key1', 'test1')
    @redis.set('key2', 'test2')
    @keys = @redis.keys.select {|key| key.include?("key")}
  end
end
