# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Groom.Repo.insert!(%Groom.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Groom.Repo.insert!(%Groom.User{name: "Norm Smith", age: 33})
Groom.Repo.insert!(%Groom.User{name: "Fred Nurk", age: 22})
