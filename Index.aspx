<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Managment</title>
<style>
	/* Reset default styles */
body, h1 {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body styles */
body {
    font-family: 'Arial', sans-serif; /* Font style */
    background: linear-gradient(135deg, #ebeae6, #637c9b); /* Colorful gradient background */
    color: #333; /* Dark text color */
    display: flex;
    flex-direction: column;
    align-items: center; /* Center content horizontally */
    justify-content: center; /* Center content vertically */
    height: 100vh; /* Full viewport height */
}

/* Heading styles */
h1 {
    font-size: 2.5em; /* Large heading */
    color: #ffffff; /* White color for the heading */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Subtle shadow */
    margin-bottom: 30px; /* Space below the heading */
}

/* Link styles */
a {
    text-decoration: none; /* Remove underline */
    font-size: 1.5em; /* Larger font for links */
    color: #06d548f3; /* Pink link color */
    padding: 10px 20px; /* Padding around the links */
    border-radius: 5px; /* Rounded corners */
    background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
    transition: background-color 0.3s, transform 0.3s; /* Smooth transitions */
}

/* Link hover effect */
a:hover {
    background-color: #ffffff; /* Change background on hover */
    color: #0ace3b; /* Darker pink on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

/* Link active effect */
a:active {
    transform: scale(0.95); /* Shrink when clicked */
}
</style>
</head>
<body>
    <h1>Welcome to Our Website Student Managment System </h1>
    <div><a href="MyLogin.aspx">Login</a></div><br>
    <div><a href="Register.aspx">Registeration</a></div>
</body>
</html>