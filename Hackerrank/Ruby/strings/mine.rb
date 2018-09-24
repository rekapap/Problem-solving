string = 'naem@web.com'
def valid_email?(string)
  string.match(/^[0-9A-Za-z\.,_]+@[0-9A-Za-z]+(?:\.[0-9A-Za-z]+)+$/) != nil
end

=begin
puts valid_email?("naem@web.com")
puts valid_email?("naem@web.co.uk")
puts valid_email?("na:n&em@we:.c")
puts valid_email?("na_me.pap@we234b.co2m.pam"
=end
puts valid_email?("na_me.pap@we234b")
puts valid_email?("na_me.pap@we234b.")
puts valid_email?("na_me.pap@.com")
puts valid_email?("na_me.pap@we.234b")
puts valid_email?("na_me.pap@we.234b")
puts valid_email?("na_me.@we.234b")
puts valid_email?("na_me23@we.234b")
puts valid_email?("23qwe@we.2.3.4.b")
