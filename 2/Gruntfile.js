module.exports = function(grunt) {
  grunt.task.loadNpmTasks('assemble');
  grunt.task.loadNpmTasks('grunt-contrib-watch');
  grunt.initConfig({
    assemble: {
      site: {
        options: {
          helpers: ['src/helpers/**/*.js'],
          layout: 'src/layouts/default.hbs',
          partials: 'src/partials/**/*.hbs',
          flatten: true
        },
        files: [
          {
            src: 'src/pages/**/*.hbs',
            dest: 'dist/'
          }
        ]
      }
    },
    watch: {
      assemble: {
        files: ['src/**'],
        tasks: ['assemble']
      }
    }
  });
  grunt.registerTask('default', ['assemble']);
};
