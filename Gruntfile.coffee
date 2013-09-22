module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    jasmine:
      pivotal:
        src: 'src/string-calculator.js'
        options: 
          specs: 'spec/*_spec.js'
    coffee:
      src:
        options:
          bare: true
        files:
          'src/string-calculator.js': 'src/string-calculator.coffee'
          'spec/string-calculator_spec.js': 'spec/string-calculator_spec.coffee'
    watch: 
      files: ['src/*.coffee', 'spec/*.coffee']
      tasks: ['coffee', 'jasmine']

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default', ['coffee', 'jasmine']
