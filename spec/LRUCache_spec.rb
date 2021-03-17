
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

    

    describe "#count" do
        it "returns the number of items in the cache" 
            
        
    end

end