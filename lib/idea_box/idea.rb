class Idea
  attr_reader :title, :description, :rank, :id, :tags
  include Comparable

  def initialize(attributes)
    @title = attributes["title"]
    @description = attributes["description"]
    @rank = attributes["rank"] || 0
    @id = attributes["id"]
    @tags = sanitizeTags(attributes["tags"] || [])
    @created = attributes["created"]
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
      "tags" => tags
     }
  end 

  def like!
    @rank += 1
  end

  def sanitizeTags(tags)

		return [] if tags.empty?
		return tags if tags.class == Array

		tags = tags.split(",")

		tags.map do |tag|

      tag.lstrip.rstrip.capitalize
      

		end
	
	end

  def self.getUnique(ideas)
    uniqueIdeas = []
    unique = []
    ideas.each  do |idea|
      description = idea.description
        if unique.count(description) == 0 
          unique << description
          uniqueIdeas  << idea
      end
  end
  uniqueIdeas
end
end

def database
    Idea.database
end

