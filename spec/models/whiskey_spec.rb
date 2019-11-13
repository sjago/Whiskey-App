require 'rails_helper'

describe Post do

  describe '#calculate_slug' do
      let(:whiskey) { Whiksy.new(name: name) }

    context "when the name is a single lower case word" do
      let(:name) { 'name'}

      it "returns the name" do
        expect(post.calculate_slug).to eq('name')
      end
    end

    context "when the name is capitalized" do
      let(:name) { 'name'}

      it "returns the downcase" do
        expect(post.calculate_slug).to eq('name')
      end
    end

    context "when the name has blank spaces" do
      let(:name) { 'test name'}

      it "replaces them with underscores" do
        expect(post.calculate_slug).to eq('test_name')
      end
    end

    context "when the name has ." do
      let(:name) { 'A name.amazing'}

      it "replaces them with underscores" do
        expect(post.calculate_slug).to eq('a_name_amazing')
      end
    end

    context 'when the name has :' do
      let(:name) { 'A name:amazing'}

      it "replaces them with underscores" do
        expect(post.calculate_slug).to eq('a_name_amazing')
      end
    end

    context 'when the name has -' do
      let(:name) { 'A name-amazing'}

      it "replaces them with underscores" do
        expect(post.calculate_slug).to eq('a_name_amazing')
      end
    end

    context 'when the name has multiple capitalized word' do
      let(:name) { 'A name Amazing'}

      it "downsizes the words" do
        expect(post.calculate_slug).to eq('a_name_amazing')
      end
    end

    context 'when the name has irregular characters' do
      let(:name) { 'A name@?$%&^*! amazing'}

      it "removes the characters" do
        expect(post.calculate_slug).to eq('a_name_amazing')
      end
    end

  
  end
end