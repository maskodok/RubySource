print "masukan batas awal :> "; awal = gets().to_i
print "masukan batas akhir :> "; akhir = gets().to_i

if awal > akhir 
puts "batas awal harus lebih kecil dari batas akhir!" 
else
print "bilangan genap: "
(awal).upto(akhir){ |x| print "#{x} " if x % 2 == 0 }
print "\n"

print "bilangan ganjil: "
(awal).upto(akhir){ |x| print "#{x} " if x % 3 == 1 } 
print "\n"
end