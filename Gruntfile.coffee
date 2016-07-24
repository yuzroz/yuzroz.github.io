module.exports = (grunt) ->
  'use strict'
  path = require 'path'
  taskName = grunt.cli.tasks[0]
  dependencies = ['dependencies']

  switch taskName
    when "deploy"
      break
    else
      dependencies.push 'devDependencies'


  # https://github.com/firstandthird/load-grunt-config
  require('load-grunt-config') grunt,
    init: true
    data:
      # data passed into config.  Can use with <%= test %>
      staticRoot: path.join(process.cwd(), 'static')
    loadGruntTasks:
      scope: dependencies

  require('time-grunt') grunt
