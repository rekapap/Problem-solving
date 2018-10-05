# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  hash = Hash.new(nil)
  cpdomains.map do |cp|
    num, domain = cp.split(' ')
    num = num.to_i
    domains = domain.split('.')
    (0...domains.size).each do |n|
      subdomain = domains[n..-1].join('.')
      hash[subdomain] = 0 if hash[subdomain].nil?
      hash[subdomain] += num
    end
  end
  hash.map do |dom, num|
    "#{num} #{dom}"
  end
end

cpdomains =["9001 discuss.leetcode.com"]
puts subdomain_visits(cpdomains)
