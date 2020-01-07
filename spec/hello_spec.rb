

describe 'Meu primeiro script', :hello do

	before(:each) do
		visit ''
	end
	
	it 'visitar a pagina' do
		puts page.title
	end

end