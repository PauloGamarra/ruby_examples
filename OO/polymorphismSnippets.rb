class MyString < String	
	def each(func)
		self.split('').each{|c| func.call(c)}
	end
end

myString = MyString.new('abc')
myArray = [1, 2, 3]

myString.each (lambda {|character| puts character})
myArray.each{|element| puts element}



class Cat
	def sound()
		puts 'Meow'
	end
	
	def sound()
		puts 'Miau'
	end
end

cat = Cat.new

cat.sound