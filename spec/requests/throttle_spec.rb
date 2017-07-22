# describe 'get breeds route', :type => :request do
#   let!(:breeds) { FactoryGirl.create_list(:breed, 12)}
#
#   before do
#     101.times do
#       get '/breeds'
#     end
#   end
#
#   it 'test successfull throttle' do
#     expect(response.status).to eq 403
#   end
# end
