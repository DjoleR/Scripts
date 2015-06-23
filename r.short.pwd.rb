# Ruby script that shortens pwd presentation in shell
# shows only username first and last dir

user = ENV["USER"]
host = ENV["HOST"]
pwd = `pwd`.chomp
pwd = pwd.sub(ENV["HOME"], '~')

count =  pwd.scan('/').length


# If there are more than 2 dirs in the current path
# this script will narrow it down to just two
if count >= 3
  first = pwd.index('/')
  second = pwd[first+1..-1].index('/')
  last = pwd.reverse.index('/')

  pwd = pwd[0..second+1] + '/.../' + pwd[-last..-1]
end

puts user + ':' + pwd + '$ '
