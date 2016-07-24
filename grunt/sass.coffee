module.exports = (grunt) ->
  app:
    expand: true
    cwd: '<%= staticRoot %>/sass'
    src: [
      '**/app.scss'
    ]
    dest: '<%= staticRoot %>/css'
    ext: '.css'
    options:
      outputStyle: 'expanded'
      includePaths: require('node-bourbon').includePaths
