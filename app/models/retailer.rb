class Retailer < ApplicationRecord

    # TO DO
    # - Counter cache for stores
    # - Callbacks for setting :status correctly for different methods
    

    # Notes:
    #   - Label for :uri_string has been added to locales/en.yml


    # Class Constants
    STATUS = {
        ACTIVE: "actv"                                                                          \
        , ARCHIVE: "arch"                                                                       \
        , DELETE: "rmv"                                                                         \
    }

    # Scopes
    default_scope { where(status: STATUS.values)}

    # Customizations
    # For Routing
    def to_param
        # To be able to use :uri_string in the routing path instead of :id
        uri_string
    end


    # Validations
    validates_presence_of :name, on: [:create, :update]                              \
                                            , message: "is required"
 

    validates :uri_string, on: [:create, :update]                                                   \
                            , presence: true                                                        \
                            , uniqueness: {                                                         \
                                case_sensitive: false                                               \
                                , message: "must be unique"                                         \
                                , conditions: -> { where(status: STATUS[:ACTIVE])}                  \
                            }                                                                       \
                            , format: {                                                             \
                                with: /[A-Za-z0-9]+[\-\_]*[A-Za-z0-9]/                              \
                                , message: "may only contain alphabets, numbers, underscores and/or hypens" \
                            }

    
    

    # Event Callbacks
    before_save do
        # Lowercase URI string
        self[:uri_string].strip.downcase!
    end 

    # Custom Methods
    def is_active?
        self.status == STATUS[:ACTIVE]
    end


end
