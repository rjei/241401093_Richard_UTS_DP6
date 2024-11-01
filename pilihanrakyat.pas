program PemilihanSuaraRakyat;
uses crt;

var
  jumlahPemilih, i, pilihA, pilihB: integer;
  pilihan: char;

begin
  clrscr;
  pilihA := 0;
  pilihB := 0;

  writeln('Masukkan jumlah pemilih: ');
  readln(jumlahPemilih);

  for i := 1 to jumlahPemilih do
  begin
    writeln('Masukkan pilihan pemilih ', i, ' (A/B): ');
    readln(pilihan);

    // Meningkatkan jumlah berdasarkan pilihan
    if (pilihan = 'A') or (pilihan = 'a') then
      pilihA := pilihA + 1
    else if (pilihan = 'B') or (pilihan = 'b') then
      pilihB := pilihB + 1
    else
      writeln('Pilihan tidak valid, abaikan suara.');
  end;

  writeln('Jumlah pemilih yang memilih opsi A: ', pilihA);
  writeln('Jumlah pemilih yang memilih opsi B: ', pilihB);
end.
