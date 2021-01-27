<!-- As a <Stakeholder>,
So that <Motivation>,
I'd like <Task>. -->

As someone who likes to use bookmarks,
So that I can keep track of my most visited websites,
I'd like to see a list of bookmarks

| Nouns      | Verbs |
| ----------- | -------- |
| Someone   | Likes to use      |
| Bookmarks   | Show     |
| Websites|Keep track of, visited|

As a person who likes surfing the web,
So that I can keep track of my best websites
I'd like to add new bookmarks from the world wide web.




BROWSWER (CLIENT) ----> CONTROLLER ----> MODEL -----> VIEW ----> BROWSER (CLIENT)
/bookmarks --> app.rb <--> bookmarks.rb --> bookmarks.erb --> /bookmarks


![image](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png?raw=true)

| Component   | Responsibility                                | Refactor                                |
|------------ |---------------------------------------------  |---------------------------------------- |
| Model       | Encapsulate logic with relevant data          | Encapsulate bookmark data in a class    |
| View        | Display the result to a user                  | Show the bookmark data in a list        |
| Controller  | Get data from the model and put in the view   | Render bookmark data into to the view   |
