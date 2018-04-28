# ChromeLauncherApp

This is wrapper for [Chrome Launcher](https://github.com/andrewvy/chrome-launcher) that starts a headless chrome instance in an OTP application.  The Chrome Launcher package just provides a process that controls chrome.

Why?  Because I want to use it with [HPDF](https://github.com/hassox/hpdf) in a Phoenix app.  Since HPDF provides an OTP application, and depends on Chrome already running when it starts, the easiest setup was to provide both as `extra_applications` for my Phoenix app.

This is not yet published on Hex.

**TODO**: Better setup docs if/when it's published.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `chrome_launcher_app` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:chrome_launcher_app, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/chrome_launcher_app](https://hexdocs.pm/chrome_launcher_app).

