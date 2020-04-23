class Transfer
  attr_accessor :receiver, :sender, :amount, :status
  
  def initialize(sender, receiver, amount=0)
    @receiver = receiver
    @sender = sender
    @amount = amount
    @status = 'pending'
  end
  
  def valid?
    if @sender.valid? && receiver.valid? 
      true 
    else 
      false 
    end
  end
  
    
    
    
    
end
