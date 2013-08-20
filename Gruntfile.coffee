module.exports = (grunt) ->
  
  grunt.task.loadNpmTasks 'assemble'

  grunt.initConfig

    assemble:

      options:
        partials: 'templates/partials/*.hbs' # this line is removable if you don't use partials

      pages:
        options:
          data: [ 'config.yml' ]
        files: [
          'result/result1.html': 'pagesrc/template1.hbs'
          'result/result2.html': 'pagesrc/template2.hbs'
        ]

  grunt.registerTask 'default', [
    'assemble'
  ]

