multiplevar = <<maskodook
----------------------------------
Selamat datang di warteg xiaoming!
----------------------------------
silahkan pilih menu makanan yang anda suka:

1. Sambel udang
2. Nasi segawon
3. Cumi asem urat

maskodook

lagi = true
while lagi
  print "#{multiplevar}\nmasukan pilihan anda: "
  pilihan = gets().to_i

  case pilihan
  when 1
    puts '> anda memilih nomor 1. Sambil udang'
  when 2
    puts '> anda memilih nomor 2. Nasi segawon'
  when 3
    puts '> anda memilih nomor 3. Cumi asem urat'
  else
    puts '-- anda tidak memilih apa-apa! --'
  end

  print "\napakah anda ingin memilih lagi ? (y/n): "
  lagi = (gets.chomp =~ /^[yY]/)
  print "\n"
end

puts "-- terimakasih sudah memilih :) --"