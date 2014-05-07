#This class corresponds to a table in the database
# We can use it to manipulate data
class Link

  # This makes the instances of this class Datamapper resources
  include DataMapper::Resource

  # This block describes what resources our model will have
  property :id,     Serial #Serial means that it will be auto-incremented for every record
  property :title,  String
  property :url,    String

end