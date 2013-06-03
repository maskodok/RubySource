multiplevar = <<maskodook
-------------------------------------------------
Selamat datang dipermainan Batu, Gunting, Kertas!
-------------------------------------------------

Bantuan:
tombol b adalah batu
tombol g adalah gunting
tombol k adalah kertas

Penjelasan:
Masukan pilihan kamu, contoh: b (batu) 
jika musuh  memilih g (gunting) maka kamulah pemenangnya!
maskodook

puts multiplevar

lagi = true
while lagi
  print "\n> masukan pilihan kamu : "

  # acak pilihan musuh
  musuh = "bgk"[rand(3)].chr
  
  # mendapatkan pilihan anda dari keyboard > convert ke huruf kecil
  anda  = gets.chomp.downcase
  
  pilihan_musuh = "\n[Musuh] memilih: #{musuh}"

  case [anda, musuh]
  when ['k','b'], ['g','k'], ['b','g']
     puts "\n[Selamat!] kamu menang mblo!"
     puts pilihan_musuh
  when ['k','k'], ['g','g'], ['b','b']
     puts "\nwalahhhh! [REMIS MBLO!] jawabannya sama! ayo coba lagi! :v"
     puts pilihan_musuh
  when ['b','k'], ['k','g'], ['g','b']
     puts "\n[wakakakak!] masak kalah sama musuh mblo :v"
     puts pilihan_musuh
  else
     puts "\nPilih yang bener dong mblo! liat bantuan!"
  end
  
  print "\n> Mau main lagi gak mblo? (y/n) : "
  lagi = gets.chomp =~ /^[yY]/
end

puts "\n-- Makasih ya mblo udah mau main :) --"