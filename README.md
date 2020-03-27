# Ideabox-Sinatra
Jumpstartlabs Ideabox project (Work in progress - currently taking a backseat to [CSToolsUpdater](https://github.com/dropkickfish/CSToolsUpdater) which solved and is solving an actual problem)

## Process
This is a hybrid guided tutorial and independent work project. The text will walk you through the step-by-step process of building the fundamental functionality. Then the tutorial ends with a list of possible extensions. You should choose and implement several of these extensions to practice and refine the learnings from the tutorial.

## Learning Goals
After completing this tutorial you should be able to:

* lay out a Sinatra application
* define routes/endpoints for that application
* use view templates to render HTML
* store data across requests with YAML::Store
* write a simple HTML form
* read and react to HTTP parameters from the form
* explain the statelessness of the HTTP request/response cycle

## Extensions

### Tagging

* When you create an idea you can specify one or more tags.
* A tag is a single phrase, a single word or fragment sentence, that you use to describe an idea.
* Each idea can have one or more tags
* You are able to view all ideas for a given tag
* You are able to view all ideas sorted by tags

### Statistics

* When ideas are created the time they were created is captured.
* You are able to view a breakdown of ideas created across the hours of the day (e.g. 12:00AM to 12:59AM, 1:00AM to 1:59AM)
* You are able to view a breakdown of ideas created acorss the days of the week (i.e. Mon, Tue, Wed, Thu, Fri, Sat, Sun)

### Revisions

* When you edit and save an idea the previous version of the idea is also saved.
* An idea now has a history or list of revisions
* You are able to view the history of an idea

### Grouped Ideas

* By default all ideas are added to a default group
* You are to define additional groups
* When you create an idea you can specify the group for that idea
* An idea can only belong to a single group
* You can view only the ideas contained in a particular group
* When sorting ideas on rank or tags only the ideas within that group are sorted

### Mobile Friendly

* You are able to add, view, and edit ideas easily through a mobile browser.
_Accomplished using Bootstrap 08/01/2020_

### Searching for Idea

* The main index page has a search field
* The search field allows you to specify a phrase.
* A phrase is a word or or fragment sentence
* When search is initiated the contents of the search field will be used to find only the ideas with that contain the phrase, case insensitive, provided within the search field.

### Fuel

* For each idea you can add a new resource
* A resource is text or link related to the idea
* You are not able to see the resources of an idea on the index page
* You are able to view all the resources for an idea when you view the details of an idea.

### Haml

* Replace all the erb templates with haml templates.
 
### Image Upload

* When you create an idea you can specify an image
* When you create a resource for an idea you can specify an image
* You are able to upload an image that will be associated with the idea
* When viewing an idea the image is displayed within the idea
* When viewing a resource the image is displayed within that resource

### Sound Upload

* When you create an idea you can specify an sound
* When you create a resource for an idea you can specify an sound
* When viewing an idea the sound is displayed as a downloadable link
* When viewing a resource the sound is displayed as a downloadable link

### SMS Integration

* You are able to text a new idea to a particular phone number
* The message from the text appear in your list of ideas

### Users

* A person is able to generate a user account
* A user account has a username
* When viewing a user’s page you are only able to the ideas for that user
* When viewing a user’s page you are able to add ideas as previously defined

_At the moment we are not going to discuss the policies for good password creation and rentention or maintaining a logged in user. The idea of a user in this implementation simply allows you to segment the ideas across users. Any person viewing a user’s page can add a new idea for that user._
