#!/bin/env ruby
# encoding: utf-8
module ServicesHelper

  def services_by_category
    SERVICES_BY_CATEGORY
  end
  
  SERVICES_BY_CATEGORY = [
    {
      :name => "Research",
      :services => [
        {
          :name =>        "User Research",
          :short_blurb => "Getting to know the people who use your technology makes for better design and a more satisfying user experience. ",
          :long_blurb =>  "Getting to know the people who use your technology makes for better design and a more satisfying user experience. We are experienced in a variety of user research methods, such as interviews, participant observation, surveys, and diary studies, that produce a wealth of useful knowledge about your audience."
        },{
          :name =>        "Conceptualization",
          :short_blurb => "Drawing on a deep understanding of technology, we can suggest new directions and concepts for your technical product.",
          :long_blurb =>  "Whether you’re just forming an idea for a new site or app or you’re seeking to expand or revitalize an existing one, we can help. We deeply understand technology and its place in society, and we maintain thorough knowledge of cutting edge technology research and practice in fields such as social computing, social movements, and learning sciences. With this knowledge, we can review the state of the art and suggest new directions and concepts for your technical product."
        },{
          :name =>        "Social Media Analytics",
          :short_blurb => "We can help you expand your social media presence and learn from what people are saying online.",
          :long_blurb =>  "Social media like Facebook and Twitter have become highly important channels through which to reach your audience. We can advise you on effective strategies for expanding your social media presence. We are also well versed in techniques for analyzing the large volumes of information available from social media to help you learn more about your audience or other phenomena of interest."
        },{
          :name =>        "Site Traffic Enhancement",
          :short_blurb => "We know how to get more people to your site and keep them there.",
          :long_blurb =>  "We know how to get more people to your site and keep them there. We can help you plan a strategy that includes restructuring and redesigning your site to improve search engine ranking and build loyalty, selecting appropriate advertising products, and building links to other trusted sites in your field. And we can show you how to use industry standard tools to watch your traffic grow."
        }
      ]
    },{
      :name => "User Experience Design",
      :services => [
        {
          :name =>        "Expert Review",
          :short_blurb => "An expert review is a quick and inexpensive way to greatly improve the usability of your site or app. ",
          :long_blurb =>  "An expert review is a quick and inexpensive way to greatly improve the usability of your site or app. An expert review relies on the usability savvy of experts here at Sassafras—our time-tested knowledge of usability best practices and industry standards—to identify usability issues and recommend solutions. We employ two industry-standard techniques in your review: the heuristic evaluation and the cognitive walkthrough."
        },{
          :name =>        "Interaction Design",
          :short_blurb => "Any site or app is only as good as its interaction design—if it's not easy, delightful, and effective, then it won't be successful.",
          
          :long_blurb =>  "Any site or app is only as good as its interaction design—if it's not easy, delightful, and effective, then it won't be successful. In our design process, we craft key usage scenarios, build an information architecture, and produce screen flow wireframes to ensure a rich experience. We also use our extensive knowledge of human-centered computing research and best practice to make your design useful and innovative."
        },{
          :name =>        "Graphic Design",
          :short_blurb => "We have the graphic design skills and the aesthetic sensibilities necessary to ensure your visitors look forward to using your site or app.",
          :long_blurb =>  "We have the graphic design skills and the aesthetic sensibilities necessary to ensure your visitors look forward to using your site or app. Research has shown that the aesthetics of a site or app can be just as important as its structure or interactivity in determining overall usability and visitor satisfaction. At Sassafras, we have the graphic design skills and the aesthetic sensibilities necessary to ensure your visitors look forward to using your site or app. We provide logo and identity design services as well as overall site template design."
        },{
          :name =>        "Usability Testing",
          :short_blurb => "Full usability testing is the next step in interaction design.",
          :long_blurb =>  "Full usability testing is the next step in interaction design. In a usability test, we bring typical test users into a usability lab and get them to use your site or app. We use industry-standard techniques, including videotaping, think-aloud studies, interviews, and A/B testing to gain a deep understanding of how an average person interacts with your system. We then recommend areas for improvement."
        }
      ]
    },{
      :name => "Development",
      :services => [
        {
          :name =>        "Custom Web Applications",
          :short_blurb => "We build your web application from scratch using the latest open-source web framework and database technologies.",
          :long_blurb =>  "We build your web application from scratch using the latest open-source web framework technologies including Ruby on Rails, Django, and Symfony, and databases including MySQL, SQLite, and MongoDB. We have experience with mission-critical, well-trafficked apps and large databases. We can help you choose the right technologies for your project and deliver a fast, secure, scalable, and maintainable system."
        },{
          :name =>        "Mobile Apps",
          :short_blurb => "We create high quality mobile applications for Android, iOS, and other platforms.",
          :long_blurb =>  "We create high quality native mobile applications for the latest versions of Android and iOS, and for other platforms via PhoneGap technology. Your mobile app can also be tightly integrated with your web app for a complete user experience. You can make use of modern mobile capabilities such as location-awareness, multimedia capture, and push notifications to best serve your users."
        },{
          :name =>        "Rich Web Interactivity",
          :short_blurb => "We use the latest technologies to provide a rich interactive experience with your site.",
          :long_blurb =>  "Web interactivity is not only eye-catching and impactful, it can also be essential for your site’s usability and user satisfaction. We use the latest technologies including HTML5, AJAX, and Comet to provide a rich interactive experience with your site. This includes everything from basic animations to dynamic content creation and editing, mashup support, multimedia content embedding, and live communication."
        },{
          :name =>        "Content Management Systems (CMS)",
          :short_blurb => "We can create a customized CMS-driven site that will enable you to create and edit your own content.",
          :long_blurb =>  "If your needs don’t entail a full, custom web application, we can create a customized CMS-driven site that will enable you to create and edit your own content. We build a custom-designed template to suit your organization’s identity, and setup extensions and plugins to achieve the features you need. We can also develop custom plugins for a variety of leasing CMSes including Wordpress, Drupal, and MediaWiki."
        },{
          :name =>        "Hosting and Maintenance",
          :short_blurb => "We can get your site and running in a secure, reliable fashion and ensure that it is always available.",
          :long_blurb =>  "We can work with leading hosting providers to get your site or app up and running in a secure, reliable fashion. This includes domain name consultation and purchasing, virtual hosting, dedicated hosting, DNS customization, Google Apps support, and email account management. We also provide on-call site maintenance and automated site issue detection to ensure that your site is always available."
        }
      ]
    }
  ]
end
