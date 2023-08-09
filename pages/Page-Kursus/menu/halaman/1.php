<h1>MATERI-01</h1>
<iframe width="1000" height="500" src="https://www.youtube.com/embed/WQqNMWnTbuc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

    <form method="post" class="row g-3 needs-validation" novalidate>
                    <?php
                      if(@$_POST["reg"]) {
                        include "../inc/tambah-poin.php";
                      }
                    ?>

                    <div class="col-4 mt-3">
                      <input class="btn btn-primary w-100" type="submit" name="reg" value="Selesai"></input>
                    </div>
                  </form>
