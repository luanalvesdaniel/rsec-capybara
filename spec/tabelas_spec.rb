
describe 'Tabelas', :tabs do

	before(:each) do
		visit 'http://training-wheels-protocol.herokuapp.com/tables'
	end

	it 'deve exibir o salário do staks' do

		atores = all('table tbody tr')
		stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }

		expect(stark.text).to include '10.000.000'

	end

	it 'deve exibir o salário do vin diesel' do

		diesel = find('table tbody tr', text: '@vindiesel')
				
		expect(diesel).to have_content '10.000.000'

	end

	it 'deve exibir o filme velozes' do
		diesel = find('table tbody tr', text: '@vindiesel')
		movie = diesel.all('td')[2].text

		expect(movie).to eql 'Velozes e Furiosos'

	end

	it 'deve exibir o insta do chris evans' do
		evans = find('table tbody tr', text: 'Chris Evans')
		insta = evans.all('td')[4].text

		expect(insta).to eql '@teamcevans'
	end

	it 'deve selecionar chris patt para remoção' do
		pratt = find('table tbody tr', text: 'Chris Pratt')
		# acoes = evans.all('td')[5]
		pratt.find('a', text: 'delete').click
		msg = page.driver.browser.switch_to.alert.text

		expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'

	end

end