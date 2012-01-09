#!/usr/bin/env ruby

require 'bundler/setup'
require 'rack'
require 'scamp'

# respond to something
run lambda { |env| [200, {'Content-Type'=>'text/plain'}, StringIO.new("It's Alive!\n")] }

# do the robot
scamp = Scamp.new(:api_key => ENV['CAMPFIRE_KEY'],
                  :subdomain => ENV['SUBDOMAIN'],
                  :ignore_self => true)

# add some rooms, can be ID numbers or room names
rooms = []

scamp.behaviour do
  
  # examples stolen from will
  # https://github.com/wjessop/Scamp/blob/master/examples/bot.rb
  match /^say (?<yousaid>.+)$/ do
    say yousaid
  end

  match "ping" do
    say "pong"
  end

  match /^blame (?<scapegoat>.+)$/ do
    say "Damnit #{scapegoat}!"
  end

  match "Hello scamp" do
    say "Hi"
  end
end

scamp.connect!(rooms)
