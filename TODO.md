# Search Bar

- should take query from state and send it on the body of a get request to /batters
- the batters index action should check for a query param (you'll have to whitelist it)
- if that param is there, query the db for matches - this should be a custom query method on the Batter model
- send back the results and update global state with them
