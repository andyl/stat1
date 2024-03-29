defmodule TableauDemoHeex.DocLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE HTML>
    <html>
      <head>
        <title>HEEX Demo Doc</title>
        <link rel="stylesheet" type="text/css" href="/css/site.css">
      </head>
      <body>
        <%= render(@inner_content) %>
      </body>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
    |> IO.iodata_to_binary()
    |> HtmlEntities.decode()
  end
end
