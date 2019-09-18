#!/bin/bash
# Quick and dirty madlibs bash script for class demo

#defining yes and no variables
yes="y"
no="n"

echo "Today in Higher Education. A Bash Script Mad Lib"
echo "When prompted input the appropriate type of word"

#creating a yes/no check. No ends program. Yes continues
Echo -n "Proceed? [y/n]: "
read ans 
echo $ans

if [ "$ans" == "$yes" ] 
    then
        echo "Let's Continue with creating our story"
elif [ "$ans" == "$no" ] 
    then
        echo "Sorry to see you go"
        exit
fi 

#user inputs for various parts of the madlib

echo "Give me a  unvirsity name"
read noun1
clear 

echo "Give me a name for an Administrator"
read name1
clear

echo "Give me an adjective describing a person"
read adjective1
clear

echo "Give me a class name"
read class
clear

echo "Give me an adjective"
read adjective2
clear

echo "Give me an adjective"
read adjective3
clear

echo "Give me an adjective"
read adjective4
clear

echo "Give me an adverb"
read adverb1
clear

echo "Give me a Committee Name"
read noun2
clear

echo "Give me an adjective"
read adjective5
clear 

echo "Give me a noun with ing"
read noun3
clear

echo "Give me an adverb"
read adverb2
clear 

echo "Give me a type of car"
read car1
clear

echo "Give me a type of food"
read food
clear

echo "Give me an adjective"
read adjective6
clear

#sets story variable
story="Today at <b>$noun1</b>, I had many things to do. First I had a meeting with Provst <b>$name1</b>. They are <b>$adjective1</b>. After that meeting, I had to teach <b>$class</b>. This class is <b>$adjective2</b>, and the students are <b>$adjective3</b>. Though I will say getting ready for this class is <b>$adjective4</b>. After that class I had to go <b>$adverb1</b> to the <b>$noun2</b> committee meeting. This committee is <b>$adjective5</b>. After <b>$noun3</b> through that meeting, I was able to <b>$adverb2</b> drive my <b>$car1</b> home for dinner. We had <b>$food</b>, and it was <b>$adjective6</b>." 

echo $story

# function for creating html encoding for madlib
html_output (){
    echo "<!doctype html>"
    echo "<html>"
    echo "<head>"
    echo "<title>Today in Higher Education. A Bash Script Mad Lib</title>"
    echo "<meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1"> <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway"><style> body,h1 {font-family: "Raleway", sans-serif} body, html {height: 100%} </style>"
    echo "<body>"
    echo "<h1>Today in Higher Education. A Bash Script Mad Lib</h1>"
    echo "<p>"
    echo ${story}
    echo "</p>"
    echo "</body>"
    echo "</html>"
} 

# Code for outputing function to html document

html_output > mad-lib.html 2>&1 
