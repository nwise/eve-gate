defmodule EveGate.PageController do
  use EveGate.Web, :controller

  def index(conn, params) do
    render conn, "index.html"
  end
end
