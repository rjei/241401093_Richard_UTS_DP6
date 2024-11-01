program si_Paling_telat;
uses crt;

var
  nama, jabatan: string;
  datangJam, datangMenit, jamDenda, menitDenda: integer;
  dendaBPH: longint;
  jabatanBPH: array[1..4] of string = ('ketua', 'wakil ketua', 'bendahara umum', 'sekretaris umum');
  i: integer;
  ulang: char;
  isBPH: boolean;

begin
  repeat
    clrscr;
    
    write('Nama: ');
    readln(nama);
    
    write('Jabatan: ');
    readln(jabatan);
    
    // Validasi input jam dan menit
    repeat
      write('Datang (Jam): ');
      readln(datangJam);
      if (datangJam < 0) or (datangJam > 23) then
        writeln('Jam tidak valid! Masukkan jam antara 0 dan 23.');
    until (datangJam >= 0) and (datangJam <= 23);
    
    repeat
      write('Datang (Menit): ');
      readln(datangMenit);
      if (datangMenit < 0) or (datangMenit > 59) then
        writeln('Menit tidak valid! Masukkan menit antara 0 dan 59.');
    until (datangMenit >= 0) and (datangMenit <= 59);

    // Menghitung denda
    dendaBPH := 0;
    jamDenda := datangJam - 7;
    menitDenda := jamDenda * 60 + datangMenit; // Mengonversi keterlambatan ke dalam menit
    isBPH := false;

    // Mengecek apakah jabatan termasuk BPH
    for i := 1 to Length(jabatanBPH) do
    begin
      if LowerCase(jabatan) = jabatanBPH[i] then
      begin
        isBPH := true;
        break;
      end;
    end;

    // Jika ada keterlambatan, hitung denda
    if menitDenda > 0 then
    begin
      if isBPH then
        dendaBPH := (menitDenda div 5) * 20000
      else
        dendaBPH := (menitDenda div 5) * 10000;

      writeln('Total Denda: Rp ', dendaBPH);
    end
    else
    begin
      writeln('Tidak ada denda, Anda tidak terlambat.');
    end;

    writeln;
    
    // Tanyakan apakah ingin mengulang
    write('Mau ulang program? (y/n): ');
    readln(ulang);
    
  until (ulang = 'n') or (ulang = 'N');
end.