program Koko_yang_berjaga_diToko_IKLC;
uses crt;
var
  uang: array[1..11] of longint  = (100000, 75000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100);
  jumlah, i, kembalian: longint; // Menggunakan longint untuk jumlah dan kembalian

begin
  clrscr;
  write('Masukkan total kembalian: ');
  readln(kembalian);
  
  jumlah := 0;
  
  // Menghitung jumlah lembaran/koin yang dibutuhkan
  for i := 1 to 11 do
  begin
    while kembalian >= uang[i] do
    begin
      kembalian := kembalian - uang[i];
      jumlah := jumlah + 1;
    end;
  end;
  
  // Output jumlah minimum lembaran/koin yang dibutuhkan
  write('Total lembaran/koin yang dibutuhkan kembalian: ', jumlah);
end.