require_relative '../acronymize'

# Rspec Tests
# 1. describe (specifying which method we're testing)
# 2. it (describing what the test should be doing)
# 3. expect (checking the output of the test)

describe '#acronymize' do
  it 'should return an empty string when given an empty string' do
    expect(acronymize('')).to eq('')
  end

  it 'should return IT when given information technology' do
    expect(acronymize('INFORMATION TECH')).to eq('IT')
  end

  it 'should return WTF when given "what The french"' do
    expect(acronymize('what The french')).to eq('WTF')
  end

  it 'should return ASAP when given "as soon as possible"' do
    expect(acronymize('as SOON as POSSIBLE')).to eq('ASAP')
  end
end

# call the method (w/arg) and compared with what we were expecting
# puts acronymize('') == ''
# puts acronymize('INFORMATION TECH') == 'IT'
# puts acronymize('what The french') == 'WTF'
# puts acronymize('as SOON as POSSIBLE') == 'ASAP'
