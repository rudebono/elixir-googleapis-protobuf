defmodule Google.Ads.Googleads.V13.Resources.ExperimentArm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :experiment, 8, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :control, 4, type: :bool
  field :traffic_split, 5, type: :int64, json_name: "trafficSplit"
  field :campaigns, 6, repeated: true, type: :string, deprecated: false

  field :in_design_campaigns, 7,
    repeated: true,
    type: :string,
    json_name: "inDesignCampaigns",
    deprecated: false
end