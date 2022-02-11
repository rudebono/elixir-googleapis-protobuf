defmodule Google.Ads.Googleads.V10.Resources.ExperimentArm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          trial: String.t(),
          name: String.t(),
          control: boolean,
          traffic_split: integer,
          campaigns: [String.t()],
          in_design_campaigns: [String.t()]
        }

  defstruct resource_name: "",
            trial: "",
            name: "",
            control: false,
            traffic_split: 0,
            campaigns: [],
            in_design_campaigns: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :trial, 2, type: :string, deprecated: false
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
