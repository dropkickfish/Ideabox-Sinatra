class Tags
  def self.getUnique(ideas)
      uniqueTags = []
      ideas.each do |idea|
          idea.tags.each do |tag|
              uniqueTags << tag if uniqueTags.count(tag) == 0
          end
      end
      uniqueTags
  end
  def self.getSame(tag) 
     ideas = IdeaStore.all 
     sameTags = []
     ideas.each do |idea| 
       idea.tags.each do |tagged|
         sameTags << idea if tag == tagged 
       end
     end
    sameTags 
  end
  def self.allBut(tag)
    ideas = IdeaStore.all
    tags = Tags.getUnique(ideas)
    tags.delete(tag)
    tags
  end

  def self.combineWith(tag) 
  combinedTags = []
  combinedIdeas = []
  tag.each do |tags| 
    combinedTags <<  Tags.getSame(tags)
  end
  combinedTags.each do |ideas|
    ideas.each do |idea|
      idea.tags - tag 
      tag - idea.tags
        if (tag - idea.tags).empty?
          combinedIdeas << idea 
        else
        end            
    end
  end
  Idea.getUnique(combinedIdeas)
  end
    
    def self.sortBy(sorter)
        tags = [Tags.getUnique(ideas)]
        tags.sort_by(sorter)
    end
end
