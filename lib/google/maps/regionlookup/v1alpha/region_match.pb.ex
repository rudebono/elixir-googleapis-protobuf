defmodule Google.Maps.Regionlookup.V1alpha.RegionMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :matched_place_id, 1, type: :string, json_name: "matchedPlaceId"
  field :candidate_place_ids, 2, repeated: true, type: :string, json_name: "candidatePlaceIds"
  field :debug_info, 3, type: :string, json_name: "debugInfo"
end