

describe 'Caixa de opções', :dropdown do

	before(:each) do
		visit '/dropdown'
	end

	it 'Item específico simples' do
		select('Loki', from: 'dropdown')
	end

	it 'Item específico com o find' do
		drop = find('.avenger-list')
		drop.find('option', text: 'Scott Lang').select_option
	end

	it 'Qualquer item', :sample do
		drop = find('.avenger-list')
		drop.all('option').sample.select_option
	end

	after(:each) do
		sleep 3
	end

end