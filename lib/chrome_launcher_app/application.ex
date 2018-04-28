defmodule ChromeLauncherApp.Application do
  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, args) do
    import Supervisor.Spec, warn: false

    config = Application.get_env(:chrome_launcher_app, ChromeLauncherApp, [])
    
    children = [
      {ChromeLauncher, config}
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChromeLauncherApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
