# Zoom

Demonstration of GraphQL and Absinthe.

To start:

  * Install dependencies with `mix deps.get`
  * `cd assets && npm install`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

After that, proceed to [`http://localhost:4000/graphiql`](http://localhost:4000/graphiql) where you will see the GraphiQL dev environment, and explore.

It's a good idea to have 2 windows open, one with the normal view, and the other with GraphiQL.

```elixir
mutation add_user {
  addUser(name: "Elixir", age: 10) {
    id
  }
}

subscription {
  userAdded {
  name
  age
  color
  uuid
 }
}
```

Neuron subscription is visible in terminal window:
```
[debug] Absinthe Subscription Publication
Field Topic: [topic: #Function<0.131774547/1 in ZoomWeb.Schema.__absinthe_function__/2>]
Subscription id: "__absinthe__:doc:-576460752303423486:B4ABBE22405C0A6D8ADB4BC10AE99107E16A301630302C4EBD4C20CFF7699E73"
Data: %{data: %{"userAdded" => %{"age" => 10, "color" => nil, "name" => "Elixir", "uuid" => nil}}}
```
