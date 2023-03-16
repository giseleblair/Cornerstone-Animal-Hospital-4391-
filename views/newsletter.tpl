<div class="footer-newsletter">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
  			<h4>Our Newsletter</h4>
  			<p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
		</div>
		<div class="col-lg-6  contact">
         <form id="newsletterForm" action="/" method="post" class="php-email-form needs-validation d-flex align-items-center justify-content-between">
          <input type="hidden" name="zlf" value="Newsletter Signup">
          <input name="zcf" value="1" type="hidden">
          <input type="hidden" name="z_bot" value="{{setting.contact-form.honeypot}}">
           <div class="col-md-6 form-group mb-0 pb-0">
             <label for="email_" class="sr-only">Email:</label>
            <input type="email" class="form-control" name="email" id="email_" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                        <div class="validate"></div>
             </div>

           <button type="submit" id="submit">Sign Up</button>
            <div class="form-msg">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
          </form>
		</div>
      </div>
    </div>
  </div>
