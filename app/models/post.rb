class Post 
    include Neo4j::ActiveNode
    property :title, :type => String 
    property :content, :type => String
    property :author, :type => String
    property :created_at

    has_n :comments

    index :title

end