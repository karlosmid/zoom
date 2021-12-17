defmodule AddUserSubscription do
  @moduledoc """
  Documentation for `NeuronClient`.
  """
  @url "ws://localhost:4000/socket/websocket"

  @query  """
  subscription {userAdded {
    name
    age
    color
    uuid
  }}
  """

  def supervisor() do
    Neuron.Subscription.supervisor(subscriber: __MODULE__, url: @url, token: "")
  end

  def handle_update(data) do
    IO.puts("Received Update - #{inspect(data)}")
  end

  def subscribe() do
    Neuron.Subscription.subscribe(__MODULE__, @query, %{})
  end

end
