defmodule Zoom.Application do
  @moduledoc """
    Start repo, endpoint, Absinthe Subscription supervisors.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Zoom.Repo, []),
      supervisor(ZoomWeb.Endpoint, []),
      {Phoenix.PubSub, [name: Zoom.PubSub, adapter: Phoenix.PubSub.PG2]},
      supervisor(Absinthe.Subscription, [ZoomWeb.Endpoint]),
      #AddUserSubscription.supervisor()
    ]

    opts = [strategy: :one_for_one, name: Zoom.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    ZoomWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
