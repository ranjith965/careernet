defmodule Careernet.PageController do
  use Careernet.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
