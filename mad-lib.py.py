# Simple python program test
#defining yes and no variables, and other variables
yes="y"
no="n"
intro =  'Today in Higher Education. A Bash Script Mad Lib.\n When prompted input the appropriate type of word.'
print (intro)
ans = input ("Proceed? [y/n]: ")

print ('your entered', ans)

if ans == yes: 
    print ("Let's Continue with creating our story")
elif ans == no:
        print ("Sorry to see you go") 
        exit ()

#user inputs for various parts of the madlib
noun1 = input ("Give me a unvirsity name:")
name1 = input ("Give me a name for an Administrator:")
adjective1 = input ("Give me an adjective describing a person: ")
classname = input ("Give me a class name: ")
adjective2 = input ("Give me an adjective: ")
adjective3 = input ("Give me an adjective: ")
adjective4 = input ("Give me an adjective: ")
adverb1 = input ("Give me an adverb: ")
noun2 = input ("Give me a Committee Name: ")
adjective5 = input ("Give me an adjective: ")
noun3 = input ("Give me a noun with ing:")
adverb2 = input ("Give me an adverb: ")
car1 = input ("Give me a type of car: ")
food = input ("Give me a type of food: ") 
adjective6 = input ("Give me an adjective: ")

#sets story variable and the main text of the madlib
story = f'Today at <b>{noun1}</b>, I had many things to do. First I had a meeting with Provst <b>{name1}</b>. They are {adjective1}</b>. After that meeting, I had to teach <b>{classname}</b>. This class is <b>{adjective2}</b>, and the students are <b>{adjective3}</b>. Though I will say getting ready for this class is <b>{adjective4}</b>. After that class I had to go <b>{adverb1}</b> to the <b>{noun2}</b> committee meeting. This committee is <b>{adjective5}</b>. After <b>{noun3}</b> through that meeting, I was able to <b>{adverb2}</b> drive my <b>{car1}</b> home for dinner. We had <b>{food}</b>, and it was <b>{adjective6}</b>.' 
#Outputs the text of the madlib to the terminal
print (story)
#Code for formating an html out put of the madlib
html_output = f"""
     <!doctype html>
     <html>
     <head>
     <title>Today in Higher Education. A Python Script Mad Lib</title>
     <meta charset="UTF-8"> <meta name="viewport" content="width=device-width, initial-scale=1"> <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
     <style> body,h1 {{font-family: "Raleway", sans-serif}} body, html {{height: 100%}} </style>
     <body>
     <h1>Today in Higher Education. A Bash Script Mad Lib</h1>"
     <p>
     {story}
     </p>
     </body>
     </html>
"""
#writes the madlib to an html file
file = open("madlib.html", "w") 
file.write(html_output) 
file.close() 