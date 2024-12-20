<d%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Landing Page</title>
    <link rel="stylesheet" href="style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nav.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js"></script>
    <script src="${pageContext.request.contextPath}/js/nav.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        background: #E2F3FB;
        overflow: auto;
        overflow-x: hidden; /* Allow scrolling */
        font-family: 'Quicksand', sans-serif;
      }

      .profile-icon {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        margin: auto;
        margin-right: 10px;
      }

      #profile-item {
        cursor: pointer;
      }

      #username {
        font-weight: bold;
      }
      .container .slide .item {
        width: 200px;
        height: 300px;
        position: absolute;
        top: 50%;
        transform: translate(0, -50%);
        border-radius: 20px;
        background-position: 50% 50%;
        background-size: cover;
        display: inline-block;
        transition: 0.5s;
      }

      .slide .item:nth-child(1),
      .slide .item:nth-child(2) {
        top: 0;
        left: 0;
        transform: translate(0, 0);
        border-radius: 0;
        width: 100%;
        height: 100%;
        opacity: 1;
      }

      .slide .item:nth-child(3) {
        left: 80%;
        opacity: 0;
      }

      .slide .item:nth-child(4) {
        left: calc(80% + 220px);
        opacity: 0;
      }

      .slide .item:nth-child(5) {
        left: calc(80% + 220px);
        opacity: 0;
      }

      .slide .item:nth-child(n + 6) {
        left: calc(80% + 220px);
        opacity: 0;
      }

      .item .content {
        position: absolute;
        top: 50%;
        left: 100px;
        width: 400px;
        height:400px;
        text-align: left;
        color: #eee;
        transform: translate(0, -50%);
        font-family: system-ui;
        display: none;

      }

      .content button:hover {
        color: #ffffff;
        background-color: #ff8c00;
      }

      .slide .item:nth-child(2) .content {
        display: block;
        position: relative;
        padding: 30px;
        box-sizing: border-box;
        z-index: 1; 
        

      }
      .slide .item:nth-child(2) .content::before{

        content: '';
        position: absolute;
        top: -40%;
        left: -80%;
        width: 200%;
        height: 200%;
        background-color:rgba(0,0,0,0.6);
        /* opacity: 0.5; */
        padding: 20%;
        box-sizing: border-box;
        border-radius: 50%;
        animation: animate 1s ease-in-out 1 forwards;
        z-index: -11;
      }

      .content .name {
        font-size: 43px;
        text-transform: uppercase;
        font-weight: bold;
        opacity: 0;
        animation: animate 1s ease-in-out 1 forwards;
      }

      .content .des {
        margin-top: 20px;
        margin-bottom: 20px;
        font-size: 20px;
        opacity: 0;
        animation: animate 1s ease-in-out 0.3s 1 forwards;
      }

      .content button {
        padding: 10px 20px;
        border: none;
        cursor: pointer;
        opacity: 0;
        animation: animate 1s ease-in-out 0.6s 1 forwards;
      }

      @keyframes animate {
        from {
          opacity: 0;
          transform: translate(0, 100px);
          filter: blur(33px);
        }

        to {
          opacity: 1;
          transform: translate(0);
          filter: blur(0);
        }
      }

      .button {
        width: 100%;
        text-align: center;
        position: absolute;
        bottom: 20px;
      }

      .button button {
        width: 40px;
        height: 35px;
        border-radius: 8px;
        border: none;
        cursor: pointer;
        margin: 0 5px;
        border: 1px solid #000;
        transition: 0.3s;
      }

      .button button:hover {
        background: #ababab;
        color: #015f85;
      }

      .logo img {
        padding-top: 30px;
        max-width: 100%;
        transition: transform 0.3s ease;
      }

      .logo a:hover img {
        transform: scale(1.05);
      }

      .wrapper .nav-links {
        display: inline-flex;
      }

      .nav-links li {
        list-style: none;
      }

      .nav-links li a {
        color: #027AA8;
        text-decoration: none;
        font-size: 18px;
        font-weight: 500;
        padding: 9px 15px;
        border-radius: 5px;
        transition: all 0.3s ease;
      }

      .nav-links li a:hover {
        background: #96badf;
      }

      .wrapper .btn {
        color: #fff;
        font-size: 20px;
        cursor: pointer;
        display: none;
      }
      .container {
        position: relative;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 100vw;
        height: 100vh;
        background: #f5f5f5;
      }

      .footer {
            background-color: #027AA8; /* Dark background for contrast */
            color: white; /* White text color */
            padding: 20px;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column; 
            align-items: center;
            justify-content: center;
            z-index:200;
            position: inherit;
        }

        .footer-content {
            width: 90%;
            max-width: 1200px;
            text-align: center;
        }

        .top-left {
            text-align: left;
            width: 100%;
        }

        .top-left h3 {
            margin: 0;
            color: white;
        }

        .middle p {
            margin: 5px 0;
            color: white;
            font-size: 16px;
        }

        .middle a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            margin: 10px 0;
            display: inline-block;
        }

        .middle a:hover {
            text-decoration: underline;
        }

        .footer-line {
            width: 80%;
            margin: 15px auto;
            border: 0.5px solid white;
        }

        .social-icons {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 10px;
        }

        .social-icons a{
            text-decoration: none;
        }

        .icon-circle {
            width: 40px;
            height: 40px;
            background-color: white; /* White circles */
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .icon-circle:hover {
            transform: scale(1.1);
        }

        .icon-circle i {
            color: #027AA8; /* Icon color */
            font-size: 20px;
        }
        /* .item .content {
          position: relative;
          left: 0;
          width: 40%;
          height:100%;
          z-index: 1; 
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          text-align: left;
          color: black;
          padding: 20px;
          overflow: hidden;
  transition: transform 0.5s ease, opacity 0.5s ease;
        } */

        /* .item .content::before {
          content: '';
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
          background-color: rgba(255, 255, 255, 0.6); /* Semi-transparent black */
           /* border-top-right-radius: 60%; */
          /* border-bottom-right-radius: 40%;  */
          /* z-index: -1;  */
          /* transition: transform 0.5s ease, opacity 0.5s ease;  */
        /* } */ */

    </style>
  </head>

  <body>
    <nav>
      <div class="wrapper">
        <div class="logo">
          <a href="#">
            <img src="images/UPES University of Petroleum and Energy Studies.png" alt="Logo" />
          </a>
        </div>
        <ul class="nav-links">
          <label for="close-btn" class="btn close-btn">
            <i class="fas fa-times"></i>
          </label>
          <li><a href="#">Home</a></li>
          <li><a href="/event">Events</a></li>
          <li id="club-dropdown">
            <a href="#">Clubs</a>
            <ul class="dropdown-list" id="club-dropdown-list">
              <!-- Club names will be dynamically inserted here -->
               <!-- <li>sample</li>
               <li>sample</li>
               <li>sample</li> -->
            </ul>
          </li>
          <li id="login-link"><a href="/login">Login</a></li>
          <li id="profile-item" style="display: none;">
            <a href="#" id="logoutLink">Logout</a>
            <img src="images/profile.png" alt="Profile" class="profile-icon" />
            <span id="username"></span> 
          </li>
        </ul>
        <label for="menu-btn" class="btn menu-btn">
          <i class="fas fa-bars"></i>
        </label>
      </div>
    </nav>
    
    
    <div class="container">
      <div class="slide">
        <div class="item" style="background-image: url('/images/meet.png')">
          <div class="content">
            <div class="name">UPES CSA</div>
            <div class="des">
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
            </div>
            <button>See More</button>
          </div>
        </div>
        <div class="item" style="background-image: url('images/upes.jpg')">
          <div class="content first" >
            <div class="name">Welcome to,</div>
            <div class="name">Ecosystem of Clubs!</div>
            <div class="des">
              Your gateway to discovering and engaging with campus clubs. Join events, explore profiles, and stay connected with everything happening around you!"
            </div>
            <!-- <button>See More</button> -->
          </div>
        </div>
        <div class="item" style="background-image: url('images/mtc.jpg')">
          <div class="content">
            <div class="name">Microsoft Technical Community - UPES</div>
            <div class="des">
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
            </div>
            <button>See More</button>
          </div>
        </div>
        
        <div class="item" style="background-image: url('/images/inf.jpeg')">
          <div class="content">   
            <div class="name">Infinity Club - Aerospace</div>
            <div class="des">
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
            </div>
            <button>See More</button>
          </div>
        </div>
        <div class="item" style="background-image:url('/images/csi.jpeg')">
          <div class="content">
            <div class="name">Computer Society of India</div>
            <div class="des">
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
            </div>
            <button>See More</button>
          </div>
        </div>
        <div class="item" style="background-image: url('/images/group.jpg')">
          <div class="content">
            <div class="name">UPES ACM</div>
            <div class="des">
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ab, eum!
            </div>
            <button>See More</button>
          </div>
        </div>
        
      <div class="button">
        <button class="next"><i class="fa-solid fa-arrow-left"></i></button>
        <button class="prev"><i class="fa-solid fa-arrow-right"></i></button>
      </div>
    </div></div>

    <footer class="footer">
        <div class="footer-content">
            <div class="middle">
                <p>Made in Response to Minor Project 1</p>
                <a href="https://github.com/your-repo-link" target="_blank">Click to View GitHub Repository</a>
            </div>
            <hr class="footer-line" />
            <div class="social-icons">
                <a href="https://www.instagram.com/upes_dehradun/" target="_blank" class="icon-circle">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="https://www.facebook.com/UPESddnuk" target="_blank" class="icon-circle">
                    <i class="fa-brands fa-facebook-f"></i>
                </a>
                <a href="https://www.youtube.com/user/UPESUniversity/featured" target="_blank" class="icon-circle">
                    <i class="fa-brands fa-youtube"></i>
                </a>
                <a href="https://www.linkedin.com/school/upesdehradun/posts/?feedView=all" target="_blank" class="icon-circle">
                    <i class="fa-brands fa-linkedin-in"></i>
                </a>
                <a href="https://www.upes.ac.in/" target="_blank" class="icon-circle">
                    <i class="fa-solid fa-link"></i>
                </a>
            </div>
        </div>
    </footer>

    <script>
      let next = document.querySelector(".next");
      let prev = document.querySelector(".prev");
      let slideContainer = document.querySelector(".slide");
      let autoSlideInterval; // To store the interval ID

      // Function to move the slider to the next item
      function slideNext() {
        let items = document.querySelectorAll(".item");
        slideContainer.appendChild(items[0]); // Move the first item to the end
      }

      // Function to move the slider to the previous item
      function slidePrev() {
        let items = document.querySelectorAll(".item");
        slideContainer.prepend(items[items.length - 1]); // Move the last item to the start
      }

      // Event listeners for manual controls
      next.addEventListener("click", () => {
        clearInterval(autoSlideInterval); // Stop automatic sliding when manually interacted
        slideNext();
        startAutoSlide(); // Restart automatic sliding
      });

      prev.addEventListener("click", () => {
        clearInterval(autoSlideInterval); // Stop automatic sliding when manually interacted
        slidePrev();
        startAutoSlide(); // Restart automatic sliding
      });

      // Function to start automatic sliding
      function startAutoSlide() {
        autoSlideInterval = setInterval(slideNext, 3000); // Automatically slide every 4 seconds
      }

      // Initialize the slider without immediate movement
      window.addEventListener("DOMContentLoaded", () => {
        startAutoSlide(); // Start the automatic slide only after the DOM has fully loaded
      });

      // Logout function handler
      $("#logoutLink").on("click", function (e) {
        e.preventDefault(); // Prevent the default link behavior
        logout();
      });

    </script>
  </body>

  </html>