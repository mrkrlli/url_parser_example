require "url_parser"

# https://sites.google.com/site/tddproblems/all-problems-1/URL-splitting

describe UrlParser do
  describe '.parse' do

    context 'given url with https protocol' do
      it 'properly parses the url for the protocol' do
        url = 'https://sites.google.com/site/tddproblems/all-problems-1/URL-splitting'

        parsed_url = UrlParser.parse(url)

        expect(parsed_url[:protocol]).to eq('https')
      end
    end

    context 'given url with http protocol' do
      it 'properly parses the url for the protocol' do
        url = 'http://sites.google.com/site/tddproblems/all-problems-1/URL-splitting'

        parsed_url = UrlParser.parse(url)

        expect(parsed_url[:protocol]).to eq('http')
      end
    end

    it 'properly parses the domain name' do
      url = 'http://sites.google.com/site/tddproblems/all-problems-1/URL-splitting'

      parsed_url = UrlParser.parse(url)

      expect(parsed_url[:domain_name]).to eq('sites.google.com')
    end

    it 'properly parses the path' do
      url = 'http://sites.google.com/site/tddproblems/all-problems-1/URL-splitting'

      parsed_url = UrlParser.parse(url)

      expect(parsed_url[:path]).to eq('site/tddproblems/all-problems-1/URL-splitting')
    end
  end
end
