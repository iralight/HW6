Users sign up and login:
/users/new

Once the user signs up, he or she is shown all the topics on the forum titled with 'Existing topics'.
The format is:
(user's name)
Create New Topic
topic 1
topic 2
...

If the user clicks on 'Create New Topic', then he/she is taken to create a new topic
t users/[:user_id]/topics/new. Once the topic is created, user is redirected back to the main page where 
all the topics are shown.

If the user clicks on one of the topics, the user is taken to topic's page which has replies to the topic:
The format is:
Topic name
Reply to this topic
Existing replies
...
...
...
Back to other topics

When the user clicks on 'Reply to this topic', the user is prompted to enter a reply via 
users/[:user_id]/topics/[:topic_id]/replies/new. Once reply is entered, the user is redirected
back to the topic's page and now the new reply appears, displaying how long ago was it created.
When the user clicks on 'Back to other topics', he/she is redirected to other topics of that user.
Clicking on any of those topics is the same as clicking on a topic at the main forum page - goes to a topic
where replies can be posted.

