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
    def self.getSame(tag) #tag from each loop
        
        ideas = IdeaStore.all #gets an array of hashes from IdeaStore called idea
        sameTags = []
        ideas.each do |idea| #for each thing in ideas, return a single idea which has a title, description, and tags
            idea.tags.each do |tagged| #for each idea, check every tag, and return that as "tagged"
                sameTags << idea if tag == tagged #put the idea into the "sameTags" array if the input tag matches the tag from the idea
            end
        end
        sameTags #is an array of ideas which are technically hashes
    end
    def self.allBut(tag)
        ideas = IdeaStore.all
        tags = Tags.getUnique(ideas)
        tags.delete(tag)
        tags
    end

    def self.combineWith(tag) #tag = [tag1, tag2]
        combinedTags = []
        combinedIdeas = []
            tag.each do |tags| #for each thing in the tag array, retrieve tags (tags should be tag1 on first loop, and tag 2 on second loop)
                    combinedTags <<  Tags.getSame(tags) #should* return an array of ideas in a hash format but then puts it into an array - [[hash1, hash2]]
                end

                combinedTags.each do |array|
                   array.each do |idea| #for each item in the combined tags array, turn it into {idea}
                                                                
                                        combinedIdeas << idea #if combinedIdeas.count(idea) == 0
                                    
                            
                    end
                end
       combinedIdeas #returns all items matching either Tag1 and Tag2
       # combinedTags
    end
    
    def self.sortBy(sorter)
        tags = [Tags.getUnique(ideas)]
        tags.sort_by(sorter)
    end
end
