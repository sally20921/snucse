#!/usr/bin/env ruby

case ARGV[0]
when 'test'
  print `cd ~/perflab-handout && make`
  exit $?.exitstatus
when 'score'
  `cd ~/perflab-handout && make`
  exit $?.exitstatus unless $?.success?

  print `~/perflab-handout/driver`
else
  puts <<-HELP
Usage: ./do <command>
Commands:
    test        Test if everything's fine
    score       Get score of it
  HELP
end
