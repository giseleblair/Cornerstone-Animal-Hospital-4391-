<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">
{{breadcrumbs}}
        <h2>{{this.title}}</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container">

        <div class="row">
{{each articles as article where find_in_set('{this.zuid}',article.tags) sort by date DESC }}
          <div class="col-lg-4  col-md-6 d-flex align-items-stretch post" data-aos="fade-up">
            <article class="entry">

              <div class="entry-img">
                <img src="{{article.image.getImage(350,232,crop)}}" alt="{{article.image_alt}}" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="{{article.getUrl()}}">{{article.title}}</a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <time class="text-info" datetime="{{article.date.date(Y-m-d)}}">{{article.date.date(M d, Y}}</time></li>
                </ul>
              </div>

              <div class="entry-content">
                {{article.content.subWords(10)}}...
                <div class="read-more">
                  <a href="{{article.getUrl()}}">Read More</a>
                </div>
              </div>

            </article><!-- End blog entry -->
          </div>
{{end-each}}
        </div>
        <div class="blog-pagination" data-aos="fade-up" id="page-content">
          <div class="pagination"/>
        </div>
      </div>
    </section><!-- End Blog Section -->

  </main><!-- End #main -->
