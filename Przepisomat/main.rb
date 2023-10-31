puts "Witam w Przepisomacie 0.1 Alpha inspired by siuzia"
puts""
puts"Najpierw potrzebujemy informacji ile masz lat"
puts"Podaj swój wiek: "
puts""


def grupaWiekowa
  wiek = gets.chomp.to_i
  if wiek >= 50
    puts "Nigdy nie jest za pózno zeby zmienic swoje zywienie"
  elsif wiek >= 30
    puts "Zaczynaja sie fajne lata prawdziwego życia, dobiore odpowiednia dietę pod ciebie"
  elsif wiek >= 18
    puts "Idealny moment na zmiane"
  else
    puts "Jesteś za młody, korzystaj póki masz czas"    
  end
end  

grupaWiekowa
puts""
puts "Dobrze, skoro juz znamy twoją grupe wiekową to potrzebujemy wiedzieć jakie posiadasz urządzenia w kuchni"



puts "Podaj jakie masz urządzenia AGD w kuchni? (oddziel je przecinkami)"
puts"Nie zrób literówki i pisz wszystko małymi literami"
puts""
puts"Przykład: kuchenka,mikrofala,piekarnik"
puts""
def twojPrzepis
user_input = gets.chomp()


devices = user_input.split(",").map(&:strip)


File.open("UrzadzeniaAGD.txt", "w") do |file|
  file.puts(devices)
end

puts""
puts"Potrzebujemy rowniez wiedzieć co tam trzymasz w lodówce, pewnie sporo. Dla usprawnienia programu podam ci w przykładzie podstawowe składniki które możesz wpisać aby program lepiej działał:"
puts"warzywa, chleb, ser, jajka, makaron, ryż, mięso: kurczak, wieprzowina, wolowina, salata, makaron, przyprawy"
puts""
puts"Teraz twoja kolej, wpisz z przykładow swoje skladniki:"
puts""

skladniki=gets.chomp()


File.open("skladniki.txt", "w") do |file|
  file.puts(skladniki)
end

#puts"Dzięki za podane informacje, pamietaj ze program jest w wersji Alpha."
#puts""


########tutaj mozna wpisywać Skladniki + urządzenie = konkretny przepis###############
   if skladniki.include? "warzywa, wolowina, przyprawy" and devices.include? "kuchenka"
     puts""
     puts"-----------------------------------------------------------------------------"
     File.open("spagetti.txt", "r") do |file|
       puts file.read()
       
     end
#######################################################################################
   elsif
     skladniki.include? "kurczak, warzywa, przyprawy, jajka" and devices.include? "piekarnik"
     puts""
      puts"-----------------------------------------------------------------------------"
      File.open("cukiniaZapiekana.txt", "r") do |file|
        puts file.read()
        
      end
   elsif
     skladniki.include? "makaron, ser" and devices.include? "mikrofala"
      puts""
       puts"-----------------------------------------------------------------------------"
       File.open("makaronSerowy.txt", "r") do |file|
         puts file.read()

       end
   end
 end
twojPrzepis

  



