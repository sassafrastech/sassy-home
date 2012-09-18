// SassSite.Services
// Models the collection of all services.
(function(ns, klass) {
  
  // constructor
  ns.Services = klass = function() {

    // hook up events
    (function(_this) {
      $(".services p.shortBlurb a").click(function(e){ _this.show_long_blurb(e.target); return false; })
    })(this);
  }
  
  // shows the long blurb and hides the short blurb
  // link - the link that was clicked
  klass.prototype.show_long_blurb = function(link) {
    // get parent div
    var div = $(link).closest("div");
    console.log(div)
    
    // hide short blurb
    div.find("p.shortBlurb").hide();
    
    // show long blurb
    div.find("p.longBlurb").show();
  }

}(SassSite));

// hookup read more links
$(document).ready(function() {new SassSite.Services()});