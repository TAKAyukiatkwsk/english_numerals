$:.unshift File.dirname(__FILE__)
require 'rubygems'
require 'rspec'

require 'num2eng'

describe Num2Eng do

  before do
    @num2eng = Num2Eng.new
  end

  it 'should get english number' do
    @num2eng.get('0').should == 'zero'
  end

  it 'should get english number' do
    @num2eng.get('10').should == 'ten'
  end

  it 'should get english number' do
    @num2eng.get('15').should == 'fifteen'
  end

  it 'should get english number' do
    @num2eng.get('18').should == 'eighteen'
  end

  it 'should get english number' do
    @num2eng.get('20').should == 'twenty'
  end

  it 'should get english number' do
    @num2eng.get('21').should == 'twenty-one'
  end

  it 'should get english number' do
    @num2eng.get('43').should == 'forty-three'
  end

  it 'should get english number' do
    @num2eng.get('55').should == 'fifty-five'
  end

  it 'should get english number' do
    @num2eng.get('84').should == 'eighty-four'
  end

  it 'should get english number' do
    @num2eng.get('99').should == 'ninety-nine'
  end

  it 'should get english number' do
    @num2eng.get('101').should == 'one hundred one'
  end

  it 'should get english number' do
    @num2eng.get('108').should == 'one hundred eight'
  end

  it 'should get english number' do
    @num2eng.get('237').should == 'two hundred thirty-seven'
  end

  it 'should get english number' do
    @num2eng.get('400').should == 'four hundred'
  end

  it 'should get english number' do
    @num2eng.get('999').should == 'nine hundred ninety-nine'
  end

  it 'should get english number' do
    @num2eng.get('1000').should == 'one thousand'
  end

  it 'should get english number' do
    @num2eng.get('1001').should == 'ten hundred one'
  end

  it 'should get english number' do
    @num2eng.get('9999').should == 'ninety-nine hundred ninety-nine'
  end

  after do
    @num2eng = nil
  end

end

