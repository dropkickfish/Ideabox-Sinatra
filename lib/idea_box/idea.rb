class Idea
  attr_reader :title, :description, :rank, :id, :tag
  include Comparable

  def initialize(attributes)
    @title = attributes["title"]
    @description = attributes["description"]
    @rank = attributes["rank"] || 0
    @id = attributes["id"]
    @tag = attributes["tag"]
  end

  def <=>(other)
    other.rank <=> rank
  end

  def save
    IdeaStore.create(to_h)
  end

  def to_h
    { 
      "title" => title,
      "description" => description,
      "rank" => rank,
      "tag" => [tag]
     }
  end 

  def like!
    @rank += 1
  end

end

def database
    Idea.database
end

