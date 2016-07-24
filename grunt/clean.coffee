module.exports = (grunt) ->
  build:
    src: [
      '<%= staticRoot %>/css/**/*'
      '!.gitkeep'
    ]
