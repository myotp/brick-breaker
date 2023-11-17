defmodule BrickBreakerWeb.GameLive do
  use Phoenix.LiveView, layout: false

  @impl true
  def mount(_params, _session, socket) do
    socket =
      assign(socket,
        game_state: :welcome,
        name: "Anna"
      )

    {:ok, socket}
  end

  @impl true
  def handle_event("keyup", %{"key" => " "}, %{assigns: %{game_state: :welcome}} = socket) do
    socket =
      assign(socket,
        game_state: :playing,
        name: "Lucas"
      )

    {:noreply, socket}
  end

  def handle_event(_, _, socket) do
    IO.inspect(socket.assigns, label: "SOCKET")
    {:noreply, socket}
  end
end
