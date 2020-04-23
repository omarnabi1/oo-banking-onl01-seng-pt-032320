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
  
  
  def execute_transaction
    if @sender.balance > @amount && @status == 'pending' && @sender.valid? && @receiver.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = 'complete'
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
  
    
    
end
