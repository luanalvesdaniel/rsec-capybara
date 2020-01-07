
describe 'Login 3', :login3 do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/access'
	end
	
	it 'login com sucesso' do
		
		# escopo
		within('#login') do
			find('input[name=username]').set 'stark'
			find('input[name=password]').set 'jarvis!'
			click_button 'Entrar'
		end

		expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

	end

	it 'cadastro com sucesso' do

		# escopo
		within('#signup') do
			find('input[name=username]').set 'luan'
			find('input[name=password]').set '123456'
			click_link 'Criar Conta'
		end

		expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
	
	end

	after(:each) do
		sleep 1
	end

end