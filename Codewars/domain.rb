=begin
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"



#print "Z_123: foobar"[/^Z_.*(?=:)/]
#=> "Z_123"
#puts
#print "https://www.cnet.com"[/^h*(?=:)/]

#print "Z_sdsd: sdsd".gsub(/^(Z_.*): .*/, "\\1")
#puts
url = "https://www.cnet.com"
url = "http://github.com/carbonfive/raygun"

#print http_remov = url.gsub(/^(http.*).*(?=:)/, '')
#puts

def domain_name(url)
  url = url.gsub('#', '')
  url = url.gsub('.', '#')
  com = url[/^.*(?=#)/] #remove com
  if com.include?('#')
    www = com.gsub(/^(http.*)(?=#)/, '') #if 'www' first char remove (#)
    url = www[1..-1]
  else
    http = com.gsub(/^(http.*).*(?=:)/, '') #if no 'www' >> first 3 remove (://)
    url = http[3..-1]
  end
  url
end


print domain_name(url)

#url = url.gsub('.', '#')
#print com = url[/^.*(?=#)/] #remove com
#puts 
#print http = com.gsub(/^(http.*).*(?=:)/, '') #if no 'www' >> first 3 remove (://)
 
#print com.gsub(/^(h.*)(?=#)/, '') #if 'www' first char remove (#)




def domain_name(url)
  URI.parse(url).host.split('.').last(2)[0]
  #url.split('.')
end
=end

#url = "http://www.github.com/carbonfive/raygun"

#"hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')

url = "http://github.com/carbonfive/raygun"

def domain_name(url)
  url.gsub(/(http|https):\/\/(?:www\.)?(?<dom>.*)\..*/, '\k<dom>')
end
print domain_name(url)

#print domain_name(url)

=begin
def domain_name2(url)
  regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end

#---------------------------------------
URL_PATTERN = %r{
  (?<http>\w+:\/\/)
  (?<subdomain>\w+\.)?
  (?<domain>[\w-]+)\.
  (?<suffix>\w+)
  (?<path>.+)?
}x
  
def domain_name3(url)
  url.match(URL_PATTERN)[:domain]
end
#--------------------------------------

def domain_name4(url)
  url.match(%r{//[^/]*?([^/.]+)\.[^/.]+(/|$)})[1]
end

def domain_name5(url)
  url.match(/.*[\.\/](.*)\./)[1]
end
=end