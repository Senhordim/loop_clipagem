class Ad::CustomersController < AdController

  before_action :set_customer, only: [ :edit, :update, :destroy]

  has_scope :by_social_name
  has_scope :by_email
  has_scope :by_cnpj

  def index
    @customers = apply_scopes(Customer).order('created_at DESC' )
  end

  def new
    @customer = Customer.new
    @customer.build_address
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to ad_customers_path, notice: "Cliente criado com sucesso!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    password = params[:customer][:password]
    password_confirmation = params[:customer][:password_confirmation]
    if password.blank? && password_confirmation.blank?
      params[:customer].delete(:password)
      params[:customer].delete(:password_confirmation)
    end
    if @customer.update(customer_params)
      redirect_to ad_customers_path, notice: "Cliente atualizado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    if @customer.destroy
      redirect_to ad_customers_path, notice: "Cliente removido com sucesso!"
    else
      render :index
    end
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(
        :name,
        :email,
        :password,
        :password_confirmation,
        :social_name,
        :cnpj,
        :phone,
        :username,
        :logo,
        address_attributes: [
          :street,
          :neighborhood,
          :zip_code,
          :numb,
          :complement,
          :city,
          :state,
          :country
        ]
        )
    end

end
