var ajaxDoneHandler = function(response, $this ) {
  console.log(response)
  $this.closest('li').append(response)
  var html =
  '<div class="contact-details">' +
  '<ul>' + '<li>First Name: ' + response.first_name + '</li>'
}

// the function that is going to run when the click event occurs
// "this" is the element that was clicked on (in this case, the <a> tag)
var showClickHandler = function(e) {
  e.preventDefault()
  var $this = $( this )
  // create a jQuery object from the <a> tag (this) so that we can utilize the .attr() method to get the 'href' value. Assign that value as a value to a url key in a hash that can be passed into our ajax function
  var ajax_options = {
    url: $this.attr('href')
  }

  //send an xhr request to the server with the ajax options hash
  // (GET contacts/1)
  $.ajax(ajax_options)
  // when the response comes back from the server, execute the ajaxDoneHandler function
  .done(function(response){ ajaxDoneHandler(response, $this) }) //add $this to pass to the done handler function so we can traverse easily
}

// select all of the li elements on the page, and trigger the showClickHandler function when the first a tag (show link) is clicked. The showClickHandler is an event handler function that is attached to
var bindClickEvents = function() {
  $('li').find('a:first').on('click', showClickHandler)
}

// Execute the bindClickEvents() function when the DOM is fully loaded
$(document).ready(function() {
  bindClickEvents()
})
