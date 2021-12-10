defmodule Google.Maps.Playablelocations.V3.Sample.SpacingOptions.PointType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :POINT_TYPE_UNSPECIFIED | :CENTER_POINT | :SNAPPED_POINT

  field :POINT_TYPE_UNSPECIFIED, 0
  field :CENTER_POINT, 1
  field :SNAPPED_POINT, 2
end
defmodule Google.Maps.Playablelocations.V3.Sample.PlayableLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location_id: {:place_id, String.t()} | {:plus_code, String.t()},
          name: String.t(),
          types: [String.t()],
          center_point: Google.Type.LatLng.t() | nil,
          snapped_point: Google.Type.LatLng.t() | nil
        }

  defstruct location_id: nil,
            name: "",
            types: [],
            center_point: nil,
            snapped_point: nil

  oneof :location_id, 0

  field :name, 1, type: :string
  field :place_id, 2, type: :string, json_name: "placeId", oneof: 0
  field :plus_code, 3, type: :string, json_name: "plusCode", oneof: 0
  field :types, 4, repeated: true, type: :string
  field :center_point, 5, type: Google.Type.LatLng, json_name: "centerPoint"
  field :snapped_point, 6, type: Google.Type.LatLng, json_name: "snappedPoint"
end
defmodule Google.Maps.Playablelocations.V3.Sample.SpacingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_spacing_meters: float | :infinity | :negative_infinity | :nan,
          point_type: Google.Maps.Playablelocations.V3.Sample.SpacingOptions.PointType.t()
        }

  defstruct min_spacing_meters: 0.0,
            point_type: :POINT_TYPE_UNSPECIFIED

  field :min_spacing_meters, 1, type: :double, json_name: "minSpacingMeters", deprecated: false

  field :point_type, 2,
    type: Google.Maps.Playablelocations.V3.Sample.SpacingOptions.PointType,
    json_name: "pointType",
    enum: true
end
defmodule Google.Maps.Playablelocations.V3.Sample.Filter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_location_count: integer,
          spacing: Google.Maps.Playablelocations.V3.Sample.SpacingOptions.t() | nil,
          included_types: [String.t()]
        }

  defstruct max_location_count: 0,
            spacing: nil,
            included_types: []

  field :max_location_count, 1, type: :int32, json_name: "maxLocationCount"
  field :spacing, 2, type: Google.Maps.Playablelocations.V3.Sample.SpacingOptions
  field :included_types, 3, repeated: true, type: :string, json_name: "includedTypes"
end
defmodule Google.Maps.Playablelocations.V3.Sample.Criterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_object_type: integer,
          filter: Google.Maps.Playablelocations.V3.Sample.Filter.t() | nil,
          fields_to_return: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct game_object_type: 0,
            filter: nil,
            fields_to_return: nil

  field :game_object_type, 1, type: :int32, json_name: "gameObjectType", deprecated: false
  field :filter, 2, type: Google.Maps.Playablelocations.V3.Sample.Filter
  field :fields_to_return, 3, type: Google.Protobuf.FieldMask, json_name: "fieldsToReturn"
end
defmodule Google.Maps.Playablelocations.V3.Sample.AreaFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          s2_cell_id: non_neg_integer
        }

  defstruct s2_cell_id: 0

  field :s2_cell_id, 1, type: :fixed64, json_name: "s2CellId", deprecated: false
end
defmodule Google.Maps.Playablelocations.V3.Sample.PlayableLocationList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations: [Google.Maps.Playablelocations.V3.Sample.PlayableLocation.t()]
        }

  defstruct locations: []

  field :locations, 1,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.Sample.PlayableLocation
end
