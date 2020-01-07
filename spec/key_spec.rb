describe 'Teclado', :key do

	before(:each) do
		visit 'http://training-wheels-protocol.herokuapp.com/key_presses'
	end

	it 'enviando teclas' do

		teclas = %i[tab escape enter shift control alt]

		teclas.each do |t|
			find('#campo-id').send_keys t
			expect(page).to have_content 'You entered: ' + t.to_s.upcase
			sleep 1
		end		
		
	end

	it 'enviando letras' do

		letras = %w[a s t f g t a e s s a y i]

		letras.each do |l|
			find('#campo-id').send_keys l
			expect(page).to have_content 'You entered: ' + l.to_s.upcase
			sleep 1
		end		
		
	end

	after(:each) do
		sleep 2
	end

end