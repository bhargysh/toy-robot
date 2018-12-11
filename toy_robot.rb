#!/usr/bin/env ruby

require_relative './game'
require_relative './input'
require_relative './output'
require_relative './table'
require_relative './user_input'

new_game = Game.new(Table.new(5), Input.new($stdin), Output.new($stdout), UserInput)
new_game.play
