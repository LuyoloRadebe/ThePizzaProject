# README
#### To Launch the app with your API_KEY and API_TOKEN set as the environment variables go to the following [guide][trello-api-guide]

#### Ensure you're logged in to Trello and retrieve your API_KEY [(linked here)][trello-api-link] and generate your API token. 

#### Navigate to the app directory and run the following to create the .env file that you'll need in order for the app to work:
```$ touch .env```

```$ echo "DB_USER=YOUR_LOCAL_POSTGRES_USER" >> .env```

```$ echo "DB_PASSWORD=YOUR_LOCAL_POSTGRES_PASSWORD" >> .env```

```$ echo "TRELLO_API_KEY=THE_KEY_YOU_RETRIEVED_ABOVE" >> .env```

```$ echo "TRELLO_API_TOKEN=THE_TOKEN_YOU_GENERATED_ABOVE" >> .env```

The application is available and deployed at with my own default API_KEY and TOKEN at: 
https://cryptic-wave-79621.herokuapp.com/


# TASK A
#### 1. How long did this assignment take you and where did you spend your time?
##### a) 2 hours, 22 minutes

######  Task A First Commit: [08 December 2021 09:16][task-a-first-commit]                          
###### Task A Last Commit: [08 December 2021, 11:38][task-a-last-commit]

##### b) Where did I spend my time?
######  Blocker 1: Git detached head and orphan branch 

In my git set-up and usage, I noticed that I had publicly pushed the environment variables `.env` containing my private Trello API key and token so I performed a `git hard reset ~HEAD(5)` which resulted in my working branch existing as a detached head. I knew I wouldn't lose the work because I had already performed a remote push annd could simply pull the hash and continue from there however, I do prefer my work to follow a certain git flow and structure and wanted to find the solution.
######  Solution 
In the orphan branch, run the following git commands:
```
$ git checkout -b task_a
$ git rm -r .
$ git checkout hash_of_orphan_commit_task_a -- .
$ git commit
```
######  Blocker 2:  Postgresql error
I typically start every new project with a postgresql database and didn't consider that this project may not actually need one, atleast not in task_a
######  Error:
The version of postgres that I used to set up the database and config is not the same version as the version of postgres that I had active and running. 
```
Connection to server on socket /tmp/.s.pgsql.5432 failed: No such file or directory
Is the server running locally and accepting connections on that socket?
```
######  Solution:
a) The files you're looking for should be in the following folder:
```
$cd /usr/local/var/postgres/
```
Is postgres running without an error status?
```
@brew services
```
Is the server running locally?
```
$ ps aux | grep postgres
```
Console output if it is
```
lradebe 69114 0.0 0.0 4268340 624 s010 R+ 12:59pm 0:00.00 grep --color=auto --exclude-dir=.bzr --exclude-dir=CVS --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn --exclude-dir=.idea --exclude-dir=.tox postgres
```
Final fix
```
brew postgresql-upgrade-database
```
#### 2. What would you do differently or improve in your solution?
##### a) I would have created a resource instead of using the homepage as an SPA

## TASK B 
### 1. How long did this assignment take you and where did you spend your time?
##### a) How long did it take?
###### Task B First Commit: [08 December 2021 12:20][task-b-first-commit]                          
###### Task B Last Commit: [09 December 2021, 17:20][task-b-last-commit]
###### Time Taken: 1 day 5 hours, 0 minutes
##### b) Where did I spend my time?
###### Blocker 1: Didn't realize that I post requests with trello the trello ruby gem are limited
In my git set-up and usage, I noticed that I had publicly pushed the environment variables `.env` containing my private Trello API key and token so I performed a `git hard reset ~HEAD(5)` which resulted in my working branch existing as a detached head. I knew I wouldn't lose the work because I had already performed a remote push annd could simply pull the hash and continue from there however, I do prefer my work to follow a certain git flow and structure and wanted to find the solution.
Solution 
In the orphan branch, run the following git commands:
```
$ git checkout -b task_a
$ git rm -r .
$ git checkout hash_of_orphan_commit_task_a -- .
$ git commit
```
###### Blocker 2: Passing parameters securely between controller methods
###### Blocker 3: Checking if another list would disrupt my flexbox
## TASK C
### 1. How long did this assignment take you and where did you spend your time?
##### a) How long did it take?
###### Task C First Commit: [08 December 2021 12:20][task-c-first-commit]                          
###### Task C Last Commit: [??? hopefully it will be 10Dec][task-c-last-commit]
##### b) Where did I spend my time?
##### Heroku 
###### Heroku Blocker 1: @babel loose configuration
######  Error:
```
remote:        Though the "loose" option was set to "false" in your @babel/preset-env config, it will not be used for @babel/plugin-proposal-private-property-in-object since the "loose" mode option was set to "true" for @babel/plugin-proposal-private-methods.
```
```
remote:        The "loose" option must be the same for @babel/plugin-proposal-class-properties, @babel/plugin-proposal-private-methods and @babel/plugin-proposal-private-property-in-object (when they are enabled): you can silence this warning by explicitly adding
remote:         ["@babel/plugin-proposal-private-property-in-object", { "loose": true }]
remote:        to the "plugins" section of your Babel config.
```
######  Solution:
Add the following lines to the plugins section of babel.config.js:
```
['@babel/plugin-proposal-class-properties',{
    loose: true
}],
['@babel/plugin-proposal-private-property-in-object',{
    loose: true
}],
['@babel/plugin-proposal-private-methods',{
    loose: true
}],
```
The application is available and deployed at with my own credentials: 
https://cryptic-wave-79621.herokuapp.com/

## TASK D
#### 3. Do you have any feedback on this assignment? 
##### a) What did you enjoy? 
All of it. I learnt more doing this task than I have ever learnt. A lot of concepts were beyond my reach and first-time or second-time implementations. It was a really good and structured challenge with a clear method of desired approach.
##### b) What could be better? 
More on my part. There were many new things I was learning as I was building the app and wanted to spend more time on for my own benefit. The webhook in Task C was a major trade-off, however, I will implement it regardless at a pace I'm comfortable with and implementing good practice.
##### c) Which aspects were unclear?
Perhaps being pedantic on my part but I was unsure whether or not credentials would be the user login details or API keys and tokens and whether or not the end user would be installing the app on their local machine or accessing it from Heroku or another deployed platform. I  ended up trying to implement the latter which resulted in a security-tradeoff as API keys and tokens should ideally not be exposed. 

[//]: # (References and Sources)
  [task-a-first-commit]:   <https://github.com/LuyoloRadebe/ThePizzaProject/commit/5a6a5b9c1957bd75dcfa6fb89f161b6086f49d16>
  [task-a-last-commit]:    <https://github.com/LuyoloRadebe/ThePizzaProject/commit/79347a250b8e05473a90f0bfbcb4dbc460a852b3>
  [task-b-first-commit]:   <https://github.com/LuyoloRadebe/ThePizzaProject/commit/b34830021e425c159c770a8c58a403f9b39019df>
  [task-b-last-commit]:    <https://github.com/LuyoloRadebe/ThePizzaProject/commit/389ebc1c377c6ef34b496ab3d0cc86640de9183f>
  [task-c-first-commit]:   <https://github.com/LuyoloRadebe/ThePizzaProject/commit/97730aaebf9e1df2fa359d9bd5ddd8c48b436a30>
  [trello-api-guide]:   <https://developer.atlassian.com/cloud/trello/guides/rest-api/api-introduction/>  
  [trello-api-link]:   <https://trello.com/app-key>  