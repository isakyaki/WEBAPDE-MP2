<html>

    <head>
        
        <link rel="stylesheet" type="text/css" href="css/profilestyle.css">
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script>  
            
            var modal = document.getElementById('id01');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            
            var modal = document.getElementById('id02');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
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

            }
        </script>
    </head>

     <body> 
        <div id = "headerCon">
            
            <form action = "Search.jsp">
                <input type = "search" id = "searchBox" placeholder = "Search..."/>
            </form>
            
            <button  id = "registerbtn" onclick="document.getElementById('id02').style.display='block'">Sign-up</button>

            <div id="id02" class="modal">

              <form class="modal-content animate" action="/">

                <div class="container">
                  <label>Username</label>
                  <input type="text" placeholder="Enter Username" name="uname" required>

                  <label>Password</label>
                  <input type="password" placeholder="Enter Password" name="psw" required>
                    
                  <label>Description</label>
                  <input type="text" placeholder="Add Description" name="des" required>

                  <button class = "login2" type="submit">Sign-up</button>
                </div>
                <div class="container" style="background-color:#f1f1f1">
                  <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
                </div>
              </form>
            </div>
            
             <button  id = "loginbtn" onclick="document.getElementById('id01').style.display='block'">Login</button>
            
            <a href = "Home.html">
           
                <button id = "homebtn">Home</button>
            
            </a>

            <div id="id01" class="modal">

              <form class="modal-content animate" action="login" method = "POST">

                <div class="container">
                  <label>Username</label>
                  <input type="text" placeholder="Enter Username" name="uname" required>

                  <label>Password</label>
                  <input type="password" placeholder="Enter Password" name="psw" required>

                  <button class = "login2" type="submit">Login</button>
                  <input type="checkbox" checked="checked"> Remember me
                </div>

                <div class="container" style="background-color:#f1f1f1">
                  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
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
                <ul id = "text">PHOTOS</ul>
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
               <a class = "userName" href = "Profile.jsp"> BingandBong</a>
                <div class = "tags"> <img class = "tagcon" src = "img/tag.png"/> 
                Star Wars Night
             </div>
             
                 
        </div>
    </body>

</html>
