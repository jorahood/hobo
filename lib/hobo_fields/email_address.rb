module HoboFields
  
  class EmailAddress < String
    
    COLUMN_TYPE = :string
    
    def validate
      "is not a valid email address" unless valid? || blank?
    end
    
    def valid?
      self =~ /^\s*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\s*$/i
    end
    
    def to_html
      self
    end

    HoboFields.register_type(:email_address, self)

  end

end

