class Booking < ApplicationRecord
  
  belongs_to :user
  
  def order_params
        params.require(:booking).permit( :bookingdate, :user_id, :status)
  end

  
  has_many :bookingitema
end

