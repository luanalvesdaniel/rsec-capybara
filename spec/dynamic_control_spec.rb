
describe 'Controles Dinâmicos', :cd do

	before(:each) do 
		visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
	end

	it 'Quando habilita o campo' do

		# Quando tem a propriedade disabled = true o campo está desabilitado
		# Quando tem a propriedade disabled = false o campo está habilitado

		res = page.has_field? 'movie', disabled: true
		puts res

		click_button 'Habilita'

		res = page.has_field? 'movie', disabled: false
		puts res

	end

end