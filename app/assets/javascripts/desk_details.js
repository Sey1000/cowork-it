$(function() {
  function toggleContent() {
    // Get the DOM reference
    var contentId = document.getElementById("content");
    // Toggle
    contentId.style.display == "block" ? contentId.style.display = "none" :
  contentId.style.display = "block";
  }
})
