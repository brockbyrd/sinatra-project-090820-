User.create(username: "brock", email: "brock@brock.com", password: "brock")
User.create(username: "alex", email: "alex@alex.com", password: "alex")
User.create(username: "saints321", email: "saints@saints.com", password: "gosaints")

Team.create(name: "Cowboys", city: "Dallas")
Team.create(name: "Saints", city: "New Orleans")
Team.create(name: "Pelicans", city: "New Orleans")

Post.create(content: "I don't like the Cowboys at all", user_id: 1, team_id: 1)
Post.create(content: "Go Saints", user_id: 1, team_id: 2)
Post.create(content: "I like the Cowboys cheerleaders!", user_id: 2, team_id: 1)
Post.create(content: "I wish Anthony Davis would come back.", user_id: 2, team_id: 3)
Post.create(content: "Saints to the Superbowl!!!", user_id: 3, team_id: 2)