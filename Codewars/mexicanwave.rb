def wave(str)
  let = str.split(//)
  res = []
  for i in 0...(str.length) do
    next if let[i] == ' '
    let[i].upcase!
    res.push(let.join)
    let[i].downcase!
  end
  res
end

print wave('hello world')
