defmodule ZoomWeb.PageControllerTest do
  use ZoomWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Zoom!"
  end
end
