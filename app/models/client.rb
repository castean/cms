class Client < ActiveRecord::Base
  belongs_to :sectorial
  belongs_to :payment_type
  belongs_to :product
  belongs_to :status
  validates :fullname, :direccion, :email, :fecha_inicio, :payment_type_id, :status_id, :sectorial_id, :ip_address, :product_id, presence: true
  validates :tel, :cel, numericality: { only_integer: true }, presence: true
  before_create :grabar_ip



  def grabar_ip
    ip = self.ip_address
    sectorial = self.sectorial_id
    ip_status = IpAddress.find_by_ip_address(ip)
    puts ip_status

    if ip_status.nil?
      tabla_ip = IpAddress.new(:ip_address => ip, :sectorial_id => sectorial, :status_id => 7)
      tabla_ip.save
    end
  end

end
