// SassSite.Services
// Models the collection of all services.
(function(ns, klass) {
  
  // constructor
  ns.Services = klass = function() {

    // hook up events
    (function(_this) {
      $(".services p.shortBlurb a").click(function(e){ _this.show_long_blurb(e.target); return false; })
      $(".services p.longBlurb a").click(function(e){ _this.show_short_blurb(e.target); return false; })
    })(this);
  }
  
  // shows the long blurb and hides the short blurb
  // link - the link that was clicked
  klass.prototype.show_long_blurb = function(link) {
    // get parent div
    var div = $(link).closest("div");
    
    // hide short blurb and then show long blurb
    div.find("p.shortBlurb").slideUp(function() {div.find("p.longBlurb").slideDown();});
  }

  // shows the short blurb and hides the long blurb
  // link - the link that was clicked
  klass.prototype.show_short_blurb = function(link) {
    // get parent div
    var div = $(link).closest("div");
    
    // hide long blurb and then show short blurb
    div.find("p.longBlurb").slideUp(function() {div.find("p.shortBlurb").slideDown();});
  }

}(SassSite));

// hookup read more links
$(document).ready(function() {new SassSite.Services()});