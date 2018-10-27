#rails g scaffold ident_types name:string
#rails g scaffold actor_types name:string
#rails g scaffold degrees actor_type:references grade:integer name:string
#rails g scaffold goals degree:references validity:integer goal:integer actor_type:references start_date:date end_date:date name:string weight:decimal fulfillment:decimal
#rails g scaffold goal_attainments degree:references validity:integer goal:references actor_type:references attainment:integer start_date:date end_date:date name:string weight:decimal fulfillment:decimal
#rails g scaffold actors ident:decimal ident_type:references actor_type:references surname:string sec_surname:string first_name:string second_name:string birth_date:date degree:references
#rails g scaffold actor_goals actor:references validity:integer goal:references sequence:integer ident:decimal actor_type:references start_date:date end_date:date score:integer
#rails g scaffold actor_attain_goals validity:integer goal:references actor:references actor_goal:references actor_type:references attainment:integer start_date:date end_date:date score:integer
#rails g scaffold actor_relationships actor1:references actor_type:references actor2:references
