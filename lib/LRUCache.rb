
class LRUCache
    attr_reader :cache_size, :cache

    def initialize(cache_size)
        @cache_size = cache_size
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      return @cache << el unless @cache.include?(el)

      #el already in the cache
        @cache.delete(el)
        @cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache
    end

    private
    # helper methods go here!

end