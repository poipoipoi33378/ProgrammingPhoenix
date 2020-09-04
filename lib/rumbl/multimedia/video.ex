defmodule Rumbl.Multimedia.Video do
  use Ecto.Schema
  import Ecto.Changeset

  schema "videos" do
    field :descriotion, :string
    field :title, :string
    field :url, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(video, attrs) do
    video
    |> cast(attrs, [:url, :title, :descriotion])
    |> validate_required([:url, :title, :descriotion])
  end
end
