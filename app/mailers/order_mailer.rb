class OrderMailer < ActionMailer::Base
  default from: "sandwichusamah@gmail.com",:to => "make_sandwich@generalthings.com"
  
  def order_confirmation (order)
      @order = order
      @url="http://www.google.com"
      mail( :subject => "New Sandwich Order")
    end
end
