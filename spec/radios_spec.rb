
describe 'Botões de Radio', :radio do

	before(:each) do
		visit '/radios'
	end

	it 'Seleção por ID' do
		choose('cap')	
	end

	it 'Seleção por find e css selecton' do
		find('input[value=guardians]').click
	end

end