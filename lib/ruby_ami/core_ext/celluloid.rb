module Celluloid::Internals::Logger
  def self.trace(*args, &block)
    debug *args, &block
  end
end
