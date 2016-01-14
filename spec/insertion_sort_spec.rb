
require_relative '../lib/insertion_sort'

describe "#{}insertion sort"  do 

    let(:basic_array) { [1,3,7,2,5] }
    let(:basic_array_sorted) { [1,3,7,2,5].sort }

    it "does basic sort" do 
        expect( insertion_sort( basic_array )).to eq(basic_array_sorted)
    end
end

