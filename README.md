# Where's Waldo

An interactive implementation of the classic puzzle books. It features 3 exhibits of increasing difficulty, with 4 of the original characters to find in each.

This project was suggested at [The Odin Project](https://www.theodinproject.com/lessons/javascript-where-s-waldo-a-photo-tagging-app), to practice using Javascript in a Rails app, and AJAX to retrieve data from the backend.



### Accessing The App

Play it live here: [Where's Waldo](https://wheres-waldo-76r5.onrender.com/exhibits)

**Note** that this lives on a free tier hosting service, therefore it may be slow to load and have visible (but brief) lag in selecting the characters.


## Technologies Used

* Ruby 3.1.0
* Rails 7.0.4
* PostgreSQL
* AJAX
* Render (hosting)
* [Request.JS for Rails](https://github.com/rails/requestjs-rails)



## Description

Features of this game include:

  * 3 exhibits to play ranging in difficulty from easy to hard.

  * Each exhibit displays name, difficulty, and current best time on hover.

  * Implements a timer which starts once the exhibit is loaded and ends once completed.

  * 3 image sizes to choose from. The exhibits could not be responsive for different devices so this adds some accessibility. The page refreshes when a new size is selected.

  * A left panel displays the characters to find in an exhibit. Once a character is correctly located, their image here will reflect that with a green check mark.

  * Clicking on a character in the exhibit will summon a ring around the character and a select box-- if the correct character is selected, the ring becomes green and remains on the exhibit, otherwise, the ring turns red and the user is alerted that they have not found who they've selected.



#### Screenshots

**SPOILER ALERT**

<img src="/public/screenshots/wheres_waldo_crop.jpg" width="400" alt="screenshot of application gameplay" title="screenshot of application gameplay">


<img src="/public/screenshots/wheres_waldo_indexpage_crop.jpg" height="650" alt="screenshot of application's landing page" title="screenshot of application's landing page">
<br/>
* Showing the mouseover event that displays exhibit information.



## Setup/Installation

To run this project locally:

1. Clone this repository
2. Run `bundle install` to install dependencies
3. Run `rails server`


### Refections as a student:

I was unable to get the Onload event listener cooperating with Turbolinks. After much research I ended up just disabling turbolinks for this project so that my setup js code would work in a "load" event.


### What's Next:

If I ever continue work on this project, I would:

* Make this a React app and have character information stored in a Rails API.

* Re-work the design of the select box and feedback to not hide the content beneath it.
