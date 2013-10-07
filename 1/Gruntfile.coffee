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
          {
            src: 'pagesrc/template1.hbs'
            dest: 'result/result1.html'
          }
          {
            src: 'pagesrc/template2.hbs'
            dest: 'result/result2.html'
          }
        ]

  grunt.registerTask 'default', [
    'assemble'
  ]

