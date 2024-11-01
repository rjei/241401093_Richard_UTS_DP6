program PenghakimanNilaiAkhir;
uses crt;
var
  uts, uas, nilaiAkhir, totalTugas, nilaiSementara: real;
  i: integer;
  nilaiHuruf: string;
begin
  clrscr;

  writeln('Masukkan nilai tugas:');
  totalTugas := 0;

  { Menggunakan for loop untuk input 8 nilai tugas }
  for i := 1 to 8 do
  begin
    write('Tugas ', i, ' : ');
    readln(nilaiSementara);
    totalTugas := totalTugas + nilaiSementara;  { Menambah total nilai tugas }
  end;

  { Hitung rata-rata nilai tugas }
  totalTugas := totalTugas / 8;

  write('Masukkan nilai UTS:');
  readln(uts);

  write('Masukkan nilai UAS:');
  readln(uas);

  { Hitung nilai akhir dengan bobot }
  nilaiAkhir := (totalTugas * 0.25) + (uts * 0.35) + (uas * 0.40);

  { Tentukan nilai huruf berdasarkan nilai akhir }
  if (nilaiAkhir >= 85) and (nilaiAkhir <= 100) then
    nilaiHuruf := 'A'
  else if (nilaiAkhir >= 80) and (nilaiAkhir < 85) then
    nilaiHuruf := 'B+'
  else if (nilaiAkhir >= 75) and (nilaiAkhir < 80) then
    nilaiHuruf := 'B'
  else if (nilaiAkhir >= 70) and (nilaiAkhir < 75) then
    nilaiHuruf := 'B-'
  else if (nilaiAkhir >= 65) and (nilaiAkhir < 70) then
    nilaiHuruf := 'C+'
  else if (nilaiAkhir >= 60) and (nilaiAkhir < 65) then
    nilaiHuruf := 'C'
  else if (nilaiAkhir >= 40) and (nilaiAkhir < 60) then
    nilaiHuruf := 'D'
  else
    nilaiHuruf := 'E';

  writeln;
  writeln('Nilai Angka : ', nilaiAkhir:0:2);
  writeln('Nilai Huruf : ', nilaiHuruf);

  readln;
end.
