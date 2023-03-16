<!-- ======= Footer ======= -->
<footer id="footer">
{{ if {globals.display_newsletter_signup} == 1 }}
  {{ include newsletter }}
  {{end-if}}
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            {{each navigation as nav where nav.nav_parent = 0 sort by sort_order}}
            <li><i class="bx bx-chevron-right"></i> <a href="{{if {nav.external_url} }}{{nav.external_link}}{{else}}{{truepath({nav.internal_link})}}{{end-if}}">{{nav.title}}</a></li>
            {{end-each}}
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Our Services</h4>
          <ul>
            {{each services as service limit 5 sort by sort_order}}
            <li><i class="bx bx-chevron-right"></i> <a href="{{our_services.first().getUrl()}}">{{service.title}}</a></li>
            {{end-each}}
            <li><i class="bx bx-chevron-right"></i> <a href="{{our_services.first().getUrl()}}">See More</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-contact">
          <h4>Contact Us</h4>
          <p class="white-space-break">{{globals.address}}</p>
          <p><strong>Phone:</strong><a class="text-white" href="tel:{{globals.contact_phone}}"> {{globals.contact_phone}}</a></p>
          <p><strong>Email:</strong><a class="text-white" href="mailto:{{globals.contact_email}}"> {{globals.contact_email}}</a></p>

        </div>

        <div class="col-lg-3 col-md-6 footer-info">
          <h3 class="text-success">About {{globals.site_name}}</h3>
          {{about.first().content.subWords(19)}}...<a class="text-white" href="{{about.first().getUrl()}}">Learn More</a>
          <div class="social-links mt-3">
            {{ if {globals.facebook} != ' ' }}<a class="shadow swatch-success" href="{{globals.facebook}}" class="facebook"><i class="bx bxl-facebook"></i><span class="sr-only sr-only-focusable">Facebook</span></a>{{end-if}}
            {{ if {globals.instagram} != ' ' }}<a class="shadow swatch-success" href="{{globals.instagram}}" class="instagram"><i class="bx bxl-instagram"></i><span class="sr-only sr-only-focusable">Instagram</span></a>{{end-if}}
     {{ if {globals.twitter} != ' '}} <a class="shadow swatch-success" href="{{globals.twitter}}" class="twitter"><i class="bx bxl-twitter"></i><span class="sr-only sr-only-focusable">Twitter</span></a>{{end-if}}
          </div>
        </div>

      </div>
    </div>
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>{{globals.site_name}}</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        {{globals.footer_text}}
      </div>
    </div>
  </div>

</footer><!-- End Footer -->

<a href="#" class="back-to-top"><i class="ri-arrow-up-line shadow remove"></i><span class="sr-only sr-only-focusable">Back to top</span></a>
<!-- <div id="preloader"></div> -->
