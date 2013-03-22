# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  { :display_name => "Bob",
    :name => "Bob",
    :email => "bob@flatironschool.com",
    :password => "password",
    :password_confirmation => "password"
  },
  { :display_name => "Scotty",
    :name => "Scotty",
    :email => "scotty@flatironschool.com",
    :password => "password",
    :password_confirmation => "password"
  },
  { :display_name => "JimmyJam",
    :name => "JimmyJam",
    :email => "jimmyjam@flatironschool.com",
    :password => "password",
    :password_confirmation => "password"
  }
])

lists = List.create([
  {:name => "Homework",
   :permalink => "homework" 
  },
  {:name => "Rails Project",
   :permalink => "rails-project" 
  }
])

tasks = Task.create([
  {:description => "Write blog post",
   :list_id => 1 
  },
  {:description => "Rails Lab",
   :list_id => 1 
  },
  {:description => "Discuss project framework",
   :list_id => 2 
  },
  {:description => "Research APIs",
   :list_id => 2 
  },
  {:description => "Prepare design mockup",
   :list_id => 2
   },
   {:description => "Prepare user stories",
   :list_id => 2
   }  
])

# task_assignments = Task_Assignment.create([
#     {:user_id => 1,
#      :task_id => 3 
#     },
#     {:user_id => 2,
#      :task_id => 3 
#     },
#     {:user_id => 3,
#      :task_id => 3 
#     },
#     {:user_id => 1,
#      :task_id => 4 
#     },
#     {:user_id => 2,
#      :task_id => 5 
#     },
#     {:user_id => 3,
#      :task_id => 6 
#     },
#     {:user_id => 1,
#      :task_id => 1 
#     },
#     {:user_id => 1,
#      :task_id => 2 
#      }
# ])