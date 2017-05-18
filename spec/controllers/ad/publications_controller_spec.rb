require 'rails_helper'

RSpec.describe Ad::PublicationsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
<<<<<<< HEAD
    
    before do
      @vehicle = create(:vehicle)
      @client  = create(:customer, cnpj: '21418553000139')
      @client2 = create(:customer, cnpj: '84675142000149')
      @client3 = create(:customer, cnpj: '77867381000135')
    end
    
=======
>>>>>>> df5741926067601d9d61d28aadcea8e8b7c37b02
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
<<<<<<< HEAD
    
    it "create a new Publication" do
      
      @publication = Publication.new(title: 'Publication teste', description: 'low description about it', date_of_publication: Time.now,
                                    status: 2, page: 1, link: 'www.google.com', customer_ids: [@client.id, @client2.id, @client3.id])
      
      expect(@publication).to be_valid
    end
=======
>>>>>>> df5741926067601d9d61d28aadcea8e8b7c37b02
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
