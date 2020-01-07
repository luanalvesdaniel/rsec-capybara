describe 'Mouse Hover', :hovers do

	before(:each) do 
		visit '/hovers'
	end

	it 'Quando passo o mouse sobre o Blade' do

		card = find('img[alt*="Blade"]')
		card.hover

		expect(page).to have_content 'Nome: Blade'

	end

	it 'Quando passo o mouse sobre o Pantera Negra' do

		# começa com Pantera
		card = find('img[alt^=Pantera]')

		# termina com Negra
		# card = find('img[alt$=Negra]')

		# Contem Negra
		# card = find('img[alt*=Negra]')
		
		# card = find('img[alt="Pantera Negra"]')
		card.hover

		expect(page).to have_content 'Nome: Pantera Negra'

	end

	it 'Quando passo o mouse sobre o Homem Aranha' do

		# Termina com Aranha
		card = find('img[alt$=Aranha]')

		# Começa com Homem
		# card = find('img[alt^=Homem]')

		# Contem com Aranha
		# card = find('img[alt*=Aranha]')
		
		# card = find('img[alt="Homem Aranha"]')
		card.hover

		expect(page).to have_content 'Nome: Homem Aranha'

	end

	after(:each) do 
		
	end

end