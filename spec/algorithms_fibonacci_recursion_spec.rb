describe '#looping_fibonacci(n)' do
  it "returns the correct value" do
    expect(MyMath.looping_fibonacci(10)).to eq(55)
  end

  it "does not use recursion" do
    expect(MyMath).to receive(:looping_fibonacci).with(4).and_call_original
    MyMath.looping_fibonacci(4)
  end
end

describe '#recursive_fibonacci(n)' do
  it "returns the correct value" do
    expect(MyMath.recursive_fibonacci(10)).to eq(55)
  end

  it "uses recursion" do
    (1..4).each { |n| expect(MyMath).to receive(:recursive_fibonacci).at_least(1).times.with(n).and_call_original }
    MyMath.recursive_fibonacci(4)
  end
end