class UrlParser
  def self.parse(url)
    parsed_url = {}

    parsed_url[:protocol] = url.split(':')[0]
    parsed_url[:domain_name] = url[/\/\/(.*?)\//, 1]
    parsed_url[:path] = url.split('/')[3..-1].join('/')

    return parsed_url
  end
end
