# Where's Waldo

Based on the classic puzzle books: Where's Waldo. My implementation of this game includes 3 exhibits (pictures) with 4 of the original characters to find in each. 


A project suggested by [The Odin Project](https://www.theodinproject.com/lessons/javascript-where-s-waldo-a-photo-tagging-app), the main objective with this one was to practice connecting the frontend with the backend. I use the new library request.js to make ajax calls to my rails backend.


If there were to be a version 2 I would:

* rework the feedback for an incorrect guess, the message "That's not ${character}" covers the image beneath it.

* rework the functionality for selecting which character has been found, the select box covers the image beneath it.

* have a user's name stored in the database alongside their time if they beat the high score.


## Reflections

Ultimately, I don't feel this project makes a lot of sense as a Rails app with 300+ lines of vanilla Javascript. If I ever come back to this for another project, I would make this a React app for the frontend and a Rails API for the backend. But regardless, I did learn a lot putting javascript into a Rails app. The one thing that I was unable to get working was using an Onload event listener with Turbolinks. After much research I ended up just disabling turbolinks for this project so that my setup js code would work in a "load" event.


## Screenshots


<img src="/public/screenshots/wheres_waldo_crop.jpg" width="400" alt="screenshot of application gameplay" title="screenshot of application gameplay">


<img src="/public/screenshots/wheres_waldo_indexpage_crop.jpg" height="650" alt="screenshot of application's landing page" title="screenshot of application's landing page">
* Showing the mouseover event that displays exhibit information. 
