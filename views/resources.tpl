<main id="main">
   {{include breadcrumbs}}
  <!-- ======= Resources Section ======= -->
  <section id="generic-page" class="">
    <div class="container">

      <div class="row">

        <div class="col-lg-12 pb-4 shadow"><div class="main-content">
           <div class="entry-img hero mx-n3">
              <img src="{{this.image.getImage()}}" alt="{{this.image_alt}}" class="img-fluid">
            </div>
            <div class="content">
              <h2>{{this.title}}</h2>
              {{this.content}}
            </div>
            {{if {this.display_pet_desk_banner} }}
            <a href="{{globals.petdesk_banner_link}}" target="_blank">
            <div class="entry-img content text-center">
              <img src="{{globals.petdesk_banner.getImage()}}" alt="{{globals.image_alt}}" class="img-fluid">
            </div>
            </a>
            {{end-if}}
            {{if {this.display_patient_forms} }}
    <div class="content">
      <!-- Table -->
      <h2 class="mb-5">Patient Forms</h2><div class="row">

        <div class="col">
          <div class="card shadow">
            <div class="table-responsive" id="patient-forms">
              <table class="table table-striped align-items-center table-flush">
                <thead class="thead-dark">
                  <tr>
                    <th class="w-25" scope="col">Form</th>
                    <th scope="col">Description</th>
                    <th class="w-25" scope="col">Download File</th>
                  </tr>
                </thead>
                <tbody>
                  {{each online_forms as form sort by sort_order}}
                  <tr>
                    <td scope="row">
                      <div class="align-items-center">
                          <p class="mb-0 text-sm" style="font-weight:bold">{{form.title}}</p>
                      </div>
                    </td>
                    <td>
                      {{form.description}}
                    </td>
                    <td>
                        <a href="{{this.pdf.getImage()}}" target="_blank" class="avatar rounded-circle mr-3">
                          <i class='bx bx-download' ></i> Download
                        </a>
                    </td>
                  </tr>
                  {{end-each}}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    {{end-if}}
  </div>
  </div>
      </div>

    </div>
  </section>
</main><!-- End #main -->
