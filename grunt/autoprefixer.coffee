module.exports =
  options:
    browsers: ['last 2 versions', 'ie 8', 'ie 9']
  dist:
    expand: true
    cwd: '<%= staticRoot %>/css'
    src: '**/*.css'
    dest: '<%= staticRoot %>/css'
