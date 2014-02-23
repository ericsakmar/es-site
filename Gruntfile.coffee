module.exports = (grunt) ->
  
  grunt.initConfig

    copy:
      main:
        src: 'src/index.html'
        dest: 'dist/index.html'
    
    less:
      main:
        files:
          'dist/style.css':'src/style.less'

    coffee: 
      main: 
        files: 
          'dist/es.js': 'src/es.coffee'
    
    watch:
      main: 
        files: ['src/style.less', 'src/index.html', 'src/es.coffee']
        tasks: ['dist']

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-copy'

  grunt.registerTask 'dist', ['copy:main', 'less:main', 'coffee:main'] 
  grunt.registerTask 'default', ['dist']