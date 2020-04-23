class Transfer
  attr_accesor :receiver, :sender, :amount, :status
  
  def initialize(sender, receiver, amount=0)
    @receiver = receiver
    @sender = sender
    @amount = amount
    @status = 'pending'
  end
  
    
    
    
    
    
end
