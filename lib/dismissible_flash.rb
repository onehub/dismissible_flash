module DismissibleFlash
  module InstanceMethods
    def dismissible
      DismissibleFlash::Dismissible.new(self)
    end
  end
  
  class Dismissible
    def initialize(flash)
      @flash = flash
    end
    
    def []=(k, v)
      @flash[k] = {:value => v, :dismissible => true}
    end
  end
end