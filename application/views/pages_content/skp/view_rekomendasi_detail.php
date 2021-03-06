<div class="row">
    <div class="col-md-12">
        <!-- Form horizontal layout striped -->
        <form class="form-horizontal form-bordered panel panel-default" action="">

            <!--Produk-->
            <div class="panel-heading text-center">
                <h3 class="panel-title">Detail Rekomendasi SKP</h3>
            </div>
            <div class="panel-body">
				<div class="form-group">
                    <label class="control-label col-sm-3">Nama UPI</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['nama_upi']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Pemilik UPI</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['pemilik_upi']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Alamat</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['alamat_upi']?>, <?=$rekomendasi[0]['desa_upi']?>, <?=$rekomendasi[0]['kecamatan_upi']?>, <?=$rekomendasi[0]['kabupaten_upi']?>, <?=$rekomendasi[0]['provinsi_upi']?> Kode Pos <?=$rekomendasi[0]['kodepos_upi']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Nomor Telepon UPI</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['kontak_upi']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Kontak Person UPI</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['kontakperson_upi']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Kategori Produk</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['kategori_produk']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Produk</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['namaind_produk']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Tujuan Pemasaran Domestik</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">
                        <?php foreach($pemasaran as $p){
                            if($p['jenis_pemasaran']=='domestik'){echo ucfirst($p['tujuan_pemasaran']).'<br>';}}?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Tujuan Pemasaran Mancanegara</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">
                        <?php foreach($pemasaran as $p){
                            if($p['jenis_pemasaran']=='mancanegara'){echo ucfirst($p['tujuan_pemasaran']).'<br>';}}?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Total Realisasi Produksi</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=number_format($rekomendasi[0]['realisasiproduksi_skp'],'0',',','.')?> Kg/Tahun</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Bahan Baku</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">
                        Hasil Tangkapan :
                        <?php foreach($bahanbaku as $bb){
                            if ($bb['kategori_bahanbaku']=='tangkapan') {
                                if ($bb['asal_bahanbaku']!=null) {
                                    echo ucfirst($bb['asal_bahanbaku']);
                                }else{
                                    echo 'Asal wilayah tidak diketahui';
                                }
                                echo ' - ';
                                if ($bb['jenis_bahanbaku']!=null) {
                                    echo ucfirst($bb['jenis_bahanbaku']);
                                }else{
                                    echo 'Jenis tidak diketahui';
                                }
                                echo ' - ';
                                if ($bb['bentuk_bahanbaku']!=null) {
                                    echo ucfirst($bb['bentuk_bahanbaku']);
                                }else{
                                    echo 'Bentuk tidak diketahui';
                                }
                                echo '; ';
                            }
                        }
                        ?>
                        <br>
                        Hasil Budidaya :
                        <?php foreach($bahanbaku as $bb){
                            if ($bb['kategori_bahanbaku']=='budidaya') {
                                if ($bb['asal_bahanbaku']!=null) {
                                    echo ucfirst($bb['asal_bahanbaku']);
                                }else{
                                    echo 'Asal wilayah tidak diketahui';
                                }
                                echo ' - ';
                                if ($bb['jenis_bahanbaku']!=null) {
                                    echo ucfirst($bb['jenis_bahanbaku']);
                                }else{
                                    echo 'Jenis tidak diketahui';
                                }
                                echo ' - ';
                                if ($bb['bentuk_bahanbaku']!=null) {
                                    echo ucfirst($bb['bentuk_bahanbaku']);
                                }else{
                                    echo 'Bentuk tidak diketahui';
                                }
                                echo '; ';
                            }
                        }
                        ?>
                        <br>
                        Hasil Import :
                        <?php foreach($bahanbaku as $bb){
                            if ($bb['kategori_bahanbaku']=='import') {
                                if ($bb['asal_bahanbaku']!=null) {
                                    echo ucfirst($bb['asal_bahanbaku']);
                                }else{
                                    echo 'Asal wilayah tidak diketahui';
                                }
                                echo ' - ';
                                if ($bb['jenis_bahanbaku']!=null) {
                                    echo ucfirst($bb['jenis_bahanbaku']);
                                }else{
                                    echo 'Jenis tidak diketahui';
                                }
                                echo ' - ';
                                if ($bb['bentuk_bahanbaku']!=null) {
                                    echo ucfirst($bb['bentuk_bahanbaku']);
                                }else{
                                    echo 'Bentuk tidak diketahui';
                                }
                                echo '; ';
                            }
                        }
                        ?>
                        <br>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">SNI</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?php foreach($sni as $s){
                                echo ucfirst($s['nama_sni']).'<br>';
                            }?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Kapasitas Sarana dan Prasarana</label>
                    <div class="col-sm-9">
                        <?php
							foreach($sarpras as $sp){
	                        	if ($sp['nama_sarpras']!='-') {
	                            	echo '<p class="control-label" style="text-align: left;">'.$sp['nama_sarpras'].' : '.number_format($sp['kuantitas_sarpras'],'0',',','.').' unit, kapasitas '.number_format($sp['value_sarpras'],'0',',','.').' Kg/unit</p>';
	                        	}
                        	}
						?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Tenaga Kerja</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">Tenaga Kerja Asing Administrasi <?=$karyawan[0]['admasinglk_karyawan']?> Laki-laki <?=$karyawan[0]['admasingpr_karyawan']?> Perempuan</p>
						<p class="control-label" style="text-align: left;">Tenaga Kerja Asing Pengolahan <?=$karyawan[0]['olahasinglk_karyawan']?> Laki-laki <?=$karyawan[0]['olahasingpr_karyawan']?> Perempuan</p>
						<p class="control-label" style="text-align: left;">Tenaga Kerja Tetap Administrasi <?=$karyawan[0]['admtetaplk_karyawan']?> Laki-laki <?=$karyawan[0]['admtetappr_karyawan']?> Perempuan</p>
						<p class="control-label" style="text-align: left;">Tenaga Kerja Tetap Pengolahan <?=$karyawan[0]['olahtetaplk_karyawan']?> Laki-laki <?=$karyawan[0]['olahtetappr_karyawan']?> Perempuan</p>
						<p class="control-label" style="text-align: left;">Tenaga Kerja Harian Administrasi <?=$karyawan[0]['admharilk_karyawan']?> Laki-laki <?=$karyawan[0]['admharipr_karyawan']?> Perempuan</p>
						<p class="control-label" style="text-align: left;">Tenaga Kerja Harian Pengolahan <?=$karyawan[0]['olahharilk_karyawan']?> Laki-laki <?=$karyawan[0]['olahharipr_karyawan']?> Perempuan</p>
						<p class="control-label" style="text-align: left;">Jumlah Hari Kerja : <?=$karyawan[0]['harikerja_karyawan']?>Hari/Bulan</p>
						<p class="control-label" style="text-align: left;">Jumlah Shift : <?=$karyawan[0]['shift_karyawan']?> Shift/Hari</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Penanggung Jawab</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">UPI/Pabrik : <?=$pendidikan[0]['upinama_penanggungjawab']?>, Pendidikan : <?=$pendidikan[0]['upipendidikan_penanggungjawab']?>, Sertifikasi : <?=$pendidikan[0]['upipelatihan_penanggungjawab']?> </p>
                        <p class="control-label" style="text-align: left;">Produksi : <?=$pendidikan[0]['produksinama_penanggungjawab']?>, Pendidikan : <?=$pendidikan[0]['produksipendidikan_penanggungjawab']?>, Sertifikasi : <?=$pendidikan[0]['produksipelatihan_penanggungjawab']?> </p>
                        <p class="control-label" style="text-align: left;">Mutu(QC) : <?=$pendidikan[0]['mutunama_penanggungjawab']?>, Pendidikan : <?=$pendidikan[0]['mutupendidikan_penanggungjawab']?>, Sertifikasi : <?=$pendidikan[0]['mutupelatihan_penanggungjawab']?> </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Asal Es</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">Produksi Sendiri : <?=$es[0]['sendiri_asales']?> Kg</p>
						<p class="control-label" style="text-align: left;">Pembelian : <?=$es[0]['pembelian_asales']?></p>
						<p class="control-label" style="text-align: left;">Bentuk Es : <?=$es[0]['bentuk_asales']?></p>
						<p class="control-label" style="text-align: left;">Penggunaan Es : <?=$es[0]['penggunaan_asales']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Air Bersih</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">Sumber Air : <?=$air[0]['sumber_air']?></p>
						<p class="control-label" style="text-align: left;">Pengolahan Air : <?=$air[0]['pengolahan_air']?></p>
						<p class="control-label" style="text-align: left;">Volume Air : <?=$air[0]['volume_air']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Informasi Lainnya</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">Bahan Penolong Tambahan : <?=$lain[0]['bahanpenolong_infolain']?></p>
						<p class="control-label" style="text-align: left;">Jenis Bahan Kemasan : Inner (<?=$lain[0]['kemasaninner_infolain']?>) - Master (<?=$lain[0]['kemasanmaster_infolain']?>)</p>
						<p class="control-label" style="text-align: left;">Lainnya : <?=$lain[0]['lainnya_infolain']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">File GMPSSOP</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?php
                            if ($rekomendasi[0]['filegmpssop_skp']!=null) {
                                echo '<a href="'.base_url('ViewerJS/..'.$rekomendasi[0]['filegmpssop_skp']).'" target="_blank">GMPSSOP</a>';
                            }else{
                                echo 'Tidak ada';
                            }
                        ?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">File Temuan</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">
                            <?php
                                if ($rekomendasi[0]['temuan_kunjungan']!=null) {
                                    echo '<a href="'.base_url('ViewerJS/..'.$rekomendasi[0]['temuan_kunjungan']).'" target="_blank">Temuan Kunjungan</a>';
                                }else{
                                    echo 'Tidak ada';
                                }
                            ?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">File Perbaikan</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;">
                            <?php
                                if ($rekomendasi[0]['perbaikan_kunjungan']!=null) {
                                    echo '<a href="'.base_url('ViewerJS/..'.$rekomendasi[0]['perbaikan_kunjungan']).'" target="_blank">Temuan Kunjungan</a>';
                                }else{
                                    echo 'Tidak ada';
                                }
                            ?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Pembina Mutu</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=$rekomendasi[0]['pic_kunjungan']?></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Tanggal Kunjungan</label>
                    <div class="col-sm-9">
                        <p class="control-label" style="text-align: left;"><?=date("d-m-Y", strtotime($rekomendasi[0]['tgl_kunjungan']))?></p>
                    </div>
                </div>
            </div>

            <div class="panel-footer">
                <a href="<?php echo base_url('skp/rekomendasi_list');?>" class="btn btn-success">Kembali</a>
            </div>
        </form>
        <!--/ Form horizontal layout striped -->
    </div>
</div>
