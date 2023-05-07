require 'digest'
module ApplicationHelper
  def string_to_color(str)
    hash = Digest::MD5.hexdigest(str)
    r = hash[0..1].hex
    g = hash[2..3].hex
    b = hash[4..5].hex
    r = (r + 128) > 255 ? 255 : r + 128 # increase red value by 128
    g = (g + 128) > 255 ? 255 : g + 128 # increase green value by 128
    b = (b + 128) > 255 ? 255 : b + 128 # increase blue value by 128
    "##{r.to_s(16)}#{g.to_s(16)}#{b.to_s(16)}"
  end
end
