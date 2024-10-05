defmodule Google.Ads.Admanager.V1.Team do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :team_id, 2, type: :int64, json_name: "teamId", deprecated: false
end