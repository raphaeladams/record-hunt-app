# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `byebug` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Byebug
  class << self
    def attach; end
    def spawn(host = T.unsafe(nil), port = T.unsafe(nil)); end
  end
end

module Kernel
  def byebug; end
  def debugger; end
  def remote_byebug(host = T.unsafe(nil), port = T.unsafe(nil)); end
end
