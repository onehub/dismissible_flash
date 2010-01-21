# Include hook code here
ActionController::Flash::FlashHash.send(:include, DismissibleFlash::InstanceMethods) unless ActionController::Flash::FlashHash.respond_to?(:dismissible)
ActionController::Flash::FlashNow.send(:include, DismissibleFlash::InstanceMethods) unless ActionController::Flash::FlashNow.respond_to?(:dismissible)