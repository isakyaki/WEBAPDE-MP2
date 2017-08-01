<html>

    <head>
        
        <link rel="stylesheet" type="text/css" href="css/homestylelogged.css">
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src = "https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script>   
            
             var x = document.getElementById('id03');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == x) {
                    x.style.display = "none";
                }
            }
            $(document).on('click', '.images',function () { 
                           $('.modalimg').show();

                        }); 
            
             $('.modalimg').click(function(){
                             $('.modalimg').hide();
                        }); 

             function closeModal() {
              document.getElementById('modalView').style.display = "none";
            }
            
        </script>
    </head>

     <body> 
        
        <div id = "headerCon">
            
            <form action = "SearchLogin.jsp"> 
                <input type = "search" id = "searchBox" placeholder = "Search..."/>
            </form>
            
         	<form action = "logout" method = "GET">
            	<input type = "submit"  id = "logoutbtn" value = "Log out" />
            </form>
            
            
            <a href="ProfileLogIn.jsp">
                <button id = "profbtn">Profile</button>
            </a>
            
            
        </div>
         
         <div id = "container">
            
            <div id = "content">
            
                <div class = "col" id = "publicCon">
                
                    <div class = "header"> PUBLIC PHOTOS </div>
                    
                    <div class = "albums">
                
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    </div>
                    
                    </div>  
                
                    <div class = "col" id = "albumCon">
                    
                    <div class = "header"> SHARED PHOTOS </div>
                    
                    <div class = "albums">
                
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    <img src = "img/boop.png" class = "images" />
                    </div>
                    
                </div>
                    <div class = "next">

                        <a><img src = "img/down.png"></a>

                    </div>
                        
                </div>
                
             
                    <div class = "next" class = "nextAlbum">

                        <a><img src = "img/down.png"></a>

                    </div>
            </div>
      
         <div class = "modalimg" id = "modalView"> 
                <span class = "close" onclick = "closeModal()"> &times; </span>
                <img class = "modImg" src = "img/boop.png"> 
                <div class = "captionCon"> This is a test</div> 
                <div class = "description">Boop beep </div>
                <a class = "userName" href = "ProfileLogIn.jsp"> BingandBong</a>
                <div class = "tags"> 
                    Star Wars Night
                    <img onclick="document.getElementById('id03').style.display='block'" class = "tagcon" src = "img/tag.png"/> 
                     <form class="public-private-toggle">
                          <p style="display:inline">Public</p>
                          <label class="switch">
                              <input type="checkbox">
                              <span class="slider round"></span>
                            </label>
                          <p style="display:inline">Private</p>
                        </form>
                    
                        <div id="id03" class="modal">

                          <form class="modal-content animate" method = "POST" action="Profilelogin.jsp">

                            <div class="container">
                              <label>Add Tag</label>
                              <input type="text" placeholder="Enter Tag" name="tag" required>

                              <button class = "login2" type="submit">Add</button>
                            </div>

                            <div class="container" style="background-color:#f1f1f1">
                              <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
                            </div>
                          </form>
                        </div>

             </div>
        </div>
             
    </body>

</html>
