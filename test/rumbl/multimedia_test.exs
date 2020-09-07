defmodule Rumbl.MultimediaTest do
  use Rumbl.DataCase, async: true

  alias Rumbl.Multimedia
  alias Rumbl.Multimedia.Category

  describe "category" do
    test "list_alpabetical_categories/0" do
      for name <- ~w(Drama Action Comedy) do
        Multimedia.create_category!(name)
      end

      alpha_names =
        for %Category{name: name} <-
          Multimedia.list_alpabetical_categories() do

          name
        end

      assert alpha_names == ~w(Action Comedy Drama)
    end
  end

  describe "video" do

  end
end
