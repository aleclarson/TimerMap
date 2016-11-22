
Type = require "Type"

type = Type "TimerMap"

type.defineValues ->

  _timers: Object.create null

type.defineMethods

  start: (key, delay, callback) ->
    @_timers[key] = setTimeout callback, delay
    return

  stop: (key) ->
    if id = @_timers[key]
      clearTimeout id
      delete @_timers[key]
    return

module.exports = type.build()
