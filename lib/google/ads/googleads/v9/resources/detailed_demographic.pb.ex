defmodule Google.Ads.Googleads.V9.Resources.DetailedDemographic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          parent: String.t(),
          launched_to_all: boolean,
          availabilities: [Google.Ads.Googleads.V9.Common.CriterionCategoryAvailability.t()]
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            parent: "",
            launched_to_all: false,
            availabilities: []

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :parent, 4, type: :string, deprecated: false
  field :launched_to_all, 5, type: :bool, json_name: "launchedToAll", deprecated: false

  field :availabilities, 6,
    repeated: true,
    type: Google.Ads.Googleads.V9.Common.CriterionCategoryAvailability,
    deprecated: false
end
