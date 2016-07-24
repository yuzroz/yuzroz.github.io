module.exports = (grunt) ->
  return {
    options:
      dirs: [
        'static/**/'
        'layouts/**/'
        '!static/css/**/'
      ]
      livereload:
        enabled: false
        port: 35729
        extensions: ['scss']
    scss: (filepath) ->
      return [
        'sass:app'
      ]
  }
