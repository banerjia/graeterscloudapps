class Comment
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  store_in collection: "comments"
  
  field :body, type: String
  field :object_type, type: String
  field :object_id, type: String
  field :author, type: String

  index({ object_type: 1, object_id: 1}, {name: 'ix_obj_type_id', sparse: true})
  
end
