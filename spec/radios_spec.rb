
describe 'Botões de Radio', :radio do

	before(:each) do
		visit 'https://training-wheels-protocol.herokuapp.com/radios'
	end

	it 'Seleção por ID' do
		choose('cap')	
	end

	it 'Seleção por find e css selecton' do
		find('input[value=guardians]').click
	end

	after(:each) do
		sleep 3
	end

end