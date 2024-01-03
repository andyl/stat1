defmodule TableauDemoHeex.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE HTML>
    <html>
      <head>
        <title>Tableau HEEX Demo</title>
        <link rel="stylesheet" type="text/css" href="css/site.css">
      </head>
      <body>
        <%= render(@inner_content) %>
      </body>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end
end
