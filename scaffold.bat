rails g scaffold Healthpromentity name:string mail:string link:string --force
rails g scaffold IdentType name:string --force
rails g scaffold ActorType name:string --force
rails g scaffold Degree actor_type:references name:string --force
rails g scaffold Goal degree:references validity:integer actor_type:references startdate:date enddate:date name:string weight:decimal fulfillment:decimal --force
rails g scaffold GoalAttainment degree:references validity:integer goal:references actor_type:references attainment:integer startdate:date enddate:date name:string weight:decimal fulfillment:decimal --force
rails g scaffold Actor ident:decimal ident_type:references actor_type:references surname:string secsurname:string firstname:string secondname:string birthdate:date degree:references --force
rails g scaffold ActorGoal actor:references validity:integer goal:references actor_type:references startdate:date enddate:date score:integer --force
rails g scaffold ActorAttainGoal validity:integer goal:references actor:references actor_goal:references actor_type:references attainment:integer startdate:date enddate:date score:integer --force
rails g scaffold ActorRelationship actor:references actor2:integer --force
rails g scaffold MaterialType name:string --force
rails g scaffold MaterialGoal goal:references material_type:references location:string --force
rails g scaffold Complaint actor:references description:text --force
rails g scaffold Answer complaint:references actor:references description:text --force
rails g scaffold Institution name:string addres:string mail:string actor:references --force
rails g migration add_healthpromentity_to_actors healthpromentity:references
