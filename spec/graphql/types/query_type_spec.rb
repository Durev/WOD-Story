RSpec.describe Types::QueryType, type: :graphql_type do

  describe "@wod" do
    let!(:wods) { FactoryBot.create_list(:wod, 3) }

    describe "querying all wods" do
      it "has a :wods field that returns an array of WodType items" do
        expect(subject).to have_field(:wods).that_returns("[Wod]!")
      end

      it "returns all created wods" do
        query_result = subject.fields['wods'].resolve(nil, nil, nil)

        wods.each do |wod|
          expect(query_result.to_a).to include(wod)
        end

        expect(query_result.count).to eq(3)
      end
    end
  end

end
