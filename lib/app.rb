require 'idea_box'
require 'erubis'


class IdeaBoxApp < Sinatra::Base
  set :method_override, true
  set :root, 'lib/app'
  configure :development do
    register Sinatra::Reloader
  end

  not_found do
    erb :error
  end

  get '/' do
    erb :index, locals: {ideas: IdeaStore.all.sort, idea: Idea.new(params)}
  end

  get '/:id/edit' do |id|
    idea = IdeaStore.find(id.to_i)
    erb :edit, locals: {idea: idea}
  end

    post '/' do
    IdeaStore.create(params[:idea])
    redirect '/'
  end

  post '/:tag' do |tag|
    ideas = Tags.getSame(tag)
    erb :tagged, locals: {tag: tag, ideas: ideas}
  end

  post '/:tag/combine' do |tag|
    tags = tag.split","
    ideas = Tags.combineWith(tags)
    print ideas
    erb :combination, locals: {tags: tags, ideas: ideas}
  end

  post '/:id/like' do |id|
    idea = IdeaStore.find(id.to_i)
    idea.like!
    IdeaStore.update(id.to_i, idea.to_h)
    redirect '/'
  end

  delete '/:id' do |id|
    IdeaStore.delete(id.to_i)
    redirect '/'
  end

  put '/:id' do |id|
    IdeaStore.update(id.to_i, params[:idea])
    redirect '/'
  end
end