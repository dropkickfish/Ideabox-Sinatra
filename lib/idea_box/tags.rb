class Tags
    def self.getUnique(ideas)
        uniqueTags = []
        ideas.each do |idea|
            idea.tags.each do |tag|
                uniqueTags << tag if uniqueTags.count(tag) == 0
            end
        end
        uniqueTags.sort
    end

    def self.separate
    end
end
