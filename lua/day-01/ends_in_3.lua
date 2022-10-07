function ends_in_3(num)
  local nstr = tostring(num)
  local len = string.len(nstr)
  return string.sub(nstr, len) == '3'
end
