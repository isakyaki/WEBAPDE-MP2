<html>

    <head>
        
        <link rel="stylesheet" type="text/css" href="css/profileloggedinstyle.css">
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

        <script>  
            
           var x = document.getElementById('id03');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == x) {
                    x.style.display = "none";
                }
            }
            
            var y = document.getElementById('id04');

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
            <button id ="uploadbtn" onclick="document.getElementById('id04').style.display='block'">Upload</button>
            
            <a href="HomeLogin.jsp">
            
                <button id = "homebtn">Home</button>
            
            </a>
            
            <div id="id04" class="modal">

                <form class="modal-content animate" action="ProfileLogIn.jsp">

                    <div id="uploadcontainer">
                        <form action="ProfileLogIn.jsp">
                          <input type="file" name="pic" accept="image/*">
                          <input type="submit">
                        </form>
                        
                         <button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
                    </div>

                </form>
            </div>
            
            </div>
         
             <div id = "profile">
                <div id = "picture"></div>
                     <div id = "bio">
                        <div id = "title">
                            <div id = "username"> @Tsukishima Kei</div>
                        </div>
                        <div id = "description">
                            I love dinosaurs and strawberry shortcake
                         </div>
                    </div>
             </div>
         
         <div id = "container">
             <div id = "searchheader">
                 <ul id = "text">PHOTOS </ul>
            </div>
             
             <div class = "albums">
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      <img src = "img/boop.png" class = "images" id = "03"/>
                      
                      
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
                <div class = "tags"> <img onclick="document.getElementById('id03').style.display='block'" class = "tagcon" src = "img/tag.png"/> 
                Star Wars Night                   
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
