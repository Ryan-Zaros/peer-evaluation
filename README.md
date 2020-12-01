# Peer Evaluation Tool
Techbenders: Omer Alrefaai, Xinyi Chen, Bryce Polito, Ryan Shaffer

CSE 3901 (9417) AU20    

## About
The Peer Evaluation Tool is a web application that streamlines the collection, collation, and analysis of peer evaluations, which are
vital for feedback in classes with team-based components, such as CSE 3901.

In this application, users are defined as either students or instructors (administrators). Features for each type of user are listed below,
along with the documentation about setting up the web application locally, testing, and future extensions.

The application uses a database in order to store information and create relationships among entities. The complete, detailed structure 
of the database can be found in the slideshow, which can found in this repository.

As for the design process, from initialization to deployment, the first step was to create the desired database as well as figure out 
attributes and relationships. From there, Ruby on Rails was used for streamlining development. After testing, the application was deployed
out onto the web using Heroku.

## Setup
Ruby: v6.0.3.2   
Rails: v6.0.3.4

First, in the project directory, run the following commands to update and install all of the required gems:

```bash
bundle update
bundle install
```

In the project directory, run the following command in order to create a local server:

```bash
rails server
```

Possible Issues:
  - May need to run ``rails generate devise:install`` to properly install the Devise gem.
  - May need to run ``rails db:migrate`` to update the database.
  - May need to resolve conflict in Gemfile.lock, making sure rails gem "cocoon" is included.
  - Upon viewing, there may be errors involving users and/or devise.
      - If so, 
  

To view the webpage, navigate to the url given (e.g. 127.0.0.1:3000) in your browser (preferably Firefox).

## Features
Students
  - Able to view all groups (teams) for their class, as well as users/members. 
  - Ability to create peer evaluations for all group members.
  - Evaluations include ratings as well as comments for each individual.
    
Administrators
  - Can populate class with students (names and emails).
  - Able to create groups (teams).
  - View evaluations (ratings, comments, etc.) assigned within groups.
  - Opportunity to detect potential problems within groups given evaluations.  

## Extensions
As of now, there is support for multiple group structures, meaning that users can belong to different teams 
(such as a project group in addition to a technology task group).

Using the ruby gem Devise, there is also authentication support. This is not yet fully fleshed out, but will 
prevent any forgery along with removing any posible dangerous actions from students. We also plan to improve 
the styling of the site a bit as well. Lastly, we may add additional features that we like from other groups' versions.


