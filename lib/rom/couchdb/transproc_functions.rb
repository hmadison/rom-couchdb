module ROM
  module CouchDB
    # Collection of Transproc functions used by the adapter
    module TransprocFunctions
      extend Transproc::Registry
      import Transproc::HashTransformations
    end
  end
end
