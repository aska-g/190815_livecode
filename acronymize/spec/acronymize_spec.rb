require_relative "../acronymize"

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    # passes if `actual == expected`
    expect(actual).to eq(expected)
  end

  it 'returns "FAQ" when passed "frequently asked questions"' do
    actual = acronymize("frequently asked questions")
    expected = 'FAQ'

    expect(actual).to eq(expected)
  end

  it 'returns "AFK" when passed "AWAY FROM KEYBOARD"' do
    actual = acronymize("AWAY FROM KEYBOARD")
    expected = 'AFK'

    expect(actual).to eq(expected)
  end

  it 'returns "WFH" when passed "working from home"' do
    actual = acronymize("working from home")
    expected = 'WFH'

    expect(actual).to eq(expected)
  end
end
