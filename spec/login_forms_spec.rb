

describe 'Forms' do

	it 'Login com sucesso' do

		visit 'https://training-wheels-protocol.herokuapp.com/login'

		fill_in 'username', with: 'stark'
		fill_in 'password', with: 'jarvis!'

		click_button 'Login'

		expect(find('#flash').visible?).to be true

		expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

		expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

	end

	it 'Senha incorreta' do
		visit 'https://training-wheels-protocol.herokuapp.com/login'

		fill_in 'username', with: 'stark'
		fill_in 'password', with: 'jarvis'

		click_button 'Login'

		expect(find('#flash').visible?).to be true

		expect(find('#flash').text).to include 'Senha é invalida!'

		expect(find('#flash')).to have_content 'Senha é invalida!'

	end
	
	it 'Usuário não cadastrado' do
		visit 'https://training-wheels-protocol.herokuapp.com/login'

		fill_in 'username', with: 'stark001'
		fill_in 'password', with: 'jarvis!'

		click_button 'Login'

		expect(find('#flash').visible?).to be true

		expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'

		expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

	end


end