class Technique < Neo4j::Rails::Model
  property :name, :type => String
  property :level, :type => Fixnum
  # has_n(:children)

end
