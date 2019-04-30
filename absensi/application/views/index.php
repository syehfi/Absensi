<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="<?php echo base_url() ?>/assets/css/style.css">
    <title>Absensi</title>
</head>

<body>
    <div class="top-header">
        <div>
            <form method="post" action="<?php echo site_url('absensi/absen') ?>">
        <div class="header">
            <h1>Event MeetUp Galambyar</h1>
            <h3>Absensi Kehadiran</h3>
        </div>
        <div class="left">
            <h2>Jurusan</h2>
            <select name="s_jurusan" id="s_jurusan" class="left__jurusan" onchange="find_prodi('')">
                <option></option>
                <?php foreach ($jurusan as $key) {?>
                     <option <?php if($this->input->post('id_jurusan')){
                                   if($this->input->post('id_jurusan')==$key->id_jurusan)
                                            echo "selected"; } ?> 
                            value="<?php echo $key->id_jurusan ?>"><?= strtoupper($key->nama_jurusan) ?>   </option>
                <?php } ?>
            </select>
           
            <h2>Program Studi</h2>
            <select name="s_prodi" id="s_prodi" class="left__prodi">
                <option></option>
                <?php foreach ($prodi as $key) {?>
                      <option <?php if($this->input->post('id_prodi')){
                                    if($this->input->post('id_prodi')==$key->id_prodi)
                                            echo "selected"; } ?> 
                                value="<?php echo $key->id_prodi ?>"><?= strtoupper($key->nama_prodi) ?>   </option>
                <?php } ?>
            </select>
        </div>
        <div class="right">
            <h2>Kelas</h2>
            <select name="s_kelas" id="s_kelas" class="right__kelas">
                <option></option>
                <?php foreach ($kelas as $key) {?>
                      <option <?php if($this->input->post('id_kelas')){
                                    if($this->input->post('id_kelas')==$key->id_kelas)
                                            echo "selected"; } ?>
                                 value="<?php echo $key->id_kelas ?>"><?= strtoupper($key->kelas) ?>   </option>
                <?php } ?>
            </select>
            <h2>No Absen</h2>
            <select name="s_absen" id="s_absen" class="right__absen">
                <option value=""> </option>
                <?php for ($i=1; $i < 36; $i++) { ?> 
                    <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                <?php } ?> 
            </select>
        </div>
        <button class="btn" type="submit" onclick="absensi('')">Absen</button>
        <div class="footer"></div>
    </div>
    </form>
</div>
</body>
</html>