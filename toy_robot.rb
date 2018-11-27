#!/usr/bin/env ruby

require_relative './game'
require_relative './input'
require_relative './output'

new_game = Game.new(Table.new(5), Output.new($stdout), UserInput)
new_game.play
