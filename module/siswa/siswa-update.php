<?php
$nisn = $_GET['id'];

$query = "SELECT * FROM muda_siswa WHERE nisn= '$nisn'";
$conn = mysqli_query($connection, $query);
$data = mysqli_fetch_array($conn);

?>

<div class='card'>
                    <div class='card-header'>
                        <h1>EDIT DATA SISWA</h1>
                    </div>
                    <div class='card-body'>
                      <h4>edi data siswa</h4>
                      <form action="module/siswa/aksi.php?module=siswa&act=update"method="post">
                          <div class="mb-3">
                            <label for="nisn" class="form-label">NISN</label>
                            <input type="text" name="nisn" value="<?= $data['nisn']; ?>" class="form-control" readonly>
                          </div>
                          <div class="mb-3">
                            <label for="nama_siswa" class="form-label">Nama</label>
                            <input type="text" name="nama_siswa" value="<?= $data['nama_siswa']; ?>" class="form-control"require>
                          </div>
                          <div class="mb3">
                            <label for="">Jurusan</label>
                            <select name="jurusan" id="" class="form-select">
                          <option value="<?= $data['jurusan']; ?>" selected> <?= $data['jurusan']; ?></option>
                          <option value="PPLG">PPLG</option>
                          <option value="TJKT">TJKT</option>
                          <option value="DKV">DKV</option>
                          <option value="AKL">AKL</option>
                          <option value="MPLB">MPLB</option>
                          <option value="PM">Pemasaran</option>
                            </select>
                          </div>
                          <div class="mb-3">
                            <label for="jenis_kelamin" class="form-label">jenis kalamin</label>
                            <select name="jenis_kelamin" class="form-select">
                              <?php if ($data['jenis_kelamin'] == 'L') : ?>
                                <option value="L" selected >Lakik</option>
                                <option value="P" >padusi</option>

                                <?php else : ?>
                                  <option value="L" selectd >lakik</option>
                                  <option value="P">Padusi</option>

                                  <?php endif;?>

                            </select>
                          </div>
                          <div class="mb-3">
                            <label for="no_hp" class="form-label">nomor hp</label>
                            <input type="text" name="no_hp" value="<?= $data['no_hp']; ?>" class="form-control" readonly>
                          </div>
                          <div class="mb-3">
                                <label for="alamat" class="form-label">Alamat</label>
                                <textarea name="alamat" rows="3" class="form-control"><?= $data['alamat']; ?></textarea>
                            </div>
                            <div class="mb-3">
                                <a href="?module=siswa" class="btn btn-secondary">Batal</a>
                                <button type="submit" class="btn btn-primary">update dayat</button>
                            </form>
                            </div>
                            </div>
                      </form>
                    </div>
                </div>