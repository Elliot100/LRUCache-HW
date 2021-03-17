
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
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
        return true
      end

      if lru_full? #and el not included, eject LRU
        @cache.shift
      end

      @cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache
    end

    private
    def lru_full?   
        @cache.length == @cache_size
    end

end