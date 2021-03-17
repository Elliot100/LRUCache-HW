
require 'rspec'
require 'LRUCache'

describe LRUCache do
    subject(:my_cache) { LRUCache.new(4) }

    describe "#initialize" do
        it "sets the cache size" do
            expect(my_cache.cache_size).to eq(4)
        end

        it "starts cache with an empty array" do
            expect(my_cache.cache).to be_empty
        end
    end

    describe "#add" do
        it "adds the element to the cache" do
            my_cache.add("I walk the line")
            expect(my_cache.cache).to eq(["I walk the line"])
        end

        it "updates the element to the front if it already exists in cache" do
            my_cache.add("I walk the line")
            my_cache.add(5)
            my_cache.add("I walk the line")
            expect(my_cache.cache).to eq( [5,"I walk the line"] )
        end

        it "ejects the LRU if cache size is reached" do
            my_cache.add(1)
            my_cache.add(2)
            my_cache.add(3)
            my_cache.add(4)
            my_cache.add(5)
            expect(my_cache.show).to eq( [2,3,4,5] )
        end
    end

    describe "#count" do
        it "returns the number of items in the cache" do
            my_cache.add("I walk the line")
            my_cache.add(5)
            expect(my_cache.count).to eq(2)
        end
    end

    describe "#show" do
        it "shows the items in the cache, with the LRU item first" do
            my_cache.add("I walk the line")
            my_cache.add(5)
            expect(my_cache.show).to eq( ["I walk the line",5] )
        end
    end

end