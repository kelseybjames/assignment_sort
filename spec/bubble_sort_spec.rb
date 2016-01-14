require_relative '../lib/bubble_sort'

describe "bubble sort"  do 

    let(:basic_array) { [1,3,7,2,5] }
    let(:basic_array_sorted) { [1,3,7,2,5].sort }
    let(:array_negatives) { [1, 2, 3, -1, -2, -3] }
    let(:array_repeated) { [1, 6, 3, 5, 2, 1, 6]}

    it "does basic sort" do 
        expect( bubble_sort( basic_array )).to eq(basic_array_sorted)
    end

    it "sorts with negatives" do
      expect( bubble_sort( array_negatives )).to eq(array_negatives.sort)
    end

    it "sorts with repeated values" do
      expect( bubble_sort( array_repeated )).to eq(array_repeated.sort)
    end
end
