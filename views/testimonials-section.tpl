<section id="clients" class="clients">
    <div class="container" data-aos="zoom-in">

      <div class="owl-carousel clients-carousel">
        {{each testimonials as testimonial sort by sort_order}}
        <div class="testimonial-item" data-dot="<span class='sr-only'>Next Testimonial Slide</span>">
          <h4>{{testimonial.title}}</h4>
          <blockquote>
            <i class="icofont-quote-left quote-left"></i>
            <div class="testimonial-content">
              {{testimonial.content}}
            </div>
            <i class="las la-quote-right quote-right"></i>
            <i class="icofont-quote-right quote-right"></i>
          </blockquote>
        </div>
        {{end-each}}
      </div>

    </div>
  </section><!-- End Clients Section -->
