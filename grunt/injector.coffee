module.exports = (grunt) ->
  files = []
  theme = 'scaffold'
  check_duplicate = (path) ->
    # filter theme's duplicate file
    if path.indexOf("themes") > -1
      for f in files
        if f is path.replace "/themes/#{theme}", ''
          return true
    return false

  format_path = (path) ->
    path = path.replace /^\/static\/sass\//, './'
    path = path.replace /^\/layouts\//, './../../layouts/'
    path = path.replace /^\/themes\//, './../../themes/'
    path = path.replace /\.(css|scss)$/gm, ''
    return "@import \"#{path}\";"


  ### Sass ###
  # Inject mixin and variables scss into app.scss
  sass_global:
    files:[{
      src: [
        "themes/#{theme}/static/sass/global/**/*.scss"
        'static/sass/global/**/*.scss'
      ]
      dest: '<%= staticRoot %>/sass/app.scss'
    }]
    options:
      transform: (filePath) ->
        grunt.log.writeln(filePath['grey'])
        files.push filePath
        return format_path(filePath)
      starttag: '// injector:global'
      endtag: '// endinjector:global'

  # Inject component scss into app.scss
  sass:
    files:[{
      src: [
        "themes/#{theme}/static/sass/**/*.scss"
        "themes/#{theme}/layouts/**/*.scss"
        'static/sass/**/*.scss'
        'layouts/**/*.scss'
        '!static/sass/app.scss'
        '!static/lib/**/*.scss'
        '!static/sass/global/**/*.scss'
        "!themes/#{theme}/static/lib/**/*.scss"
        "!themes/#{theme}/static/sass/global/**/*.scss"
      ]
      dest: '<%= staticRoot %>/sass/app.scss'
    }]
    options:
      transform: (filePath) ->
        if check_duplicate(filePath)
          return false
        else
          grunt.log.writeln(filePath['grey'])
          files.push filePath
          return format_path(filePath)
      starttag: '// injector:app'
      endtag: '// endinjector:app'
