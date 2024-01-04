defmodule TableauDemoHeex.IndexPage do
  use Tableau.Page, layout: TableauDemoHeex.RootLayout, permalink: "/"
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <h3>Hello World!</h3>

    <.banner />
    """
  end

  def banner(assigns) do
    ~H"""
    <p class="font-bold text-red-500">
      Welcome to your first Tableau Site!
    </p>
    <p class="font-bold">
    <a href="/test1/index.html">TEST1</a>
    </p>
    """
  end
end
