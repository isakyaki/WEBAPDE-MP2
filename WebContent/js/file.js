            var USER = []; 
            var PHOTOS = []; 
            var FRIENDS = []; 
            var TAGS = []; 
            
            function getUsers() { 
	            return $.getJSON('data/USER.json', function(data) {
	                console.log(data);
	                USER = data; 
	            }); 
            } 
            
            function getPhotos() { 
	            return $.getJSON('data/PHOTOS.json', function(data) {
	                console.log(data);
	                PHOTOS = data; 
	            }); 
            } 
            
            function getTags() { 
	            return $.getJSON('data/TAGS.json', function(data) {
	                console.log(data);
	                TAGS = data; 
	            }); 
            } 
            
            function getFriends() { 
	            return $.getJSON('data/FRIENDS.json', function(data) {
	                console.log(data);
	                FRIENDS = data; 
	            }); 
            } 
            
            $(document).ready(function() {
                
                $.when(getUsers(), getPhotos(), getTags(), getFriends()).done(function() {
                    console.log(USER);  
                    console.log(PHOTOS);  
                    console.log(FRIENDS);  
                    console.log(TAGS);  
                }); 
            });