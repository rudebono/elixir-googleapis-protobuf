defmodule Google.Ads.Googleads.V11.Resources.LifeEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :parent, 4, type: :string, deprecated: false
  field :launched_to_all, 5, type: :bool, json_name: "launchedToAll", deprecated: false

  field :availabilities, 6,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.CriterionCategoryAvailability,
    deprecated: false
end
