(function() {

  module.exports.register = function(Handlebars, options) {

    Handlebars.registerHelper('mod-section', function(data, options) {
      return '<section><h2>' + data.hText + '</h2>' + options.fn(this) + '</section>';
    });

  };

}).call(this);
