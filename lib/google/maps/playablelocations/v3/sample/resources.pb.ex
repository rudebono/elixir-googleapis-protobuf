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

  defstruct [:location_id, :name, :types, :center_point, :snapped_point]

  oneof :location_id, 0

  field :name, 1, type: :string
  field :place_id, 2, type: :string, json_name: "placeId", oneof: 0
  field :plus_code, 3, type: :string, json_name: "plusCode", oneof: 0
  field :types, 4, repeated: true, type: :string
  field :center_point, 5, type: Google.Type.LatLng, json_name: "centerPoint"
  field :snapped_point, 6, type: Google.Type.LatLng, json_name: "snappedPoint"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.Sample.SpacingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_spacing_meters: float | :infinity | :negative_infinity | :nan,
          point_type: Google.Maps.Playablelocations.V3.Sample.SpacingOptions.PointType.t()
        }

  defstruct [:min_spacing_meters, :point_type]

  field :min_spacing_meters, 1, type: :double, json_name: "minSpacingMeters"

  field :point_type, 2,
    type: Google.Maps.Playablelocations.V3.Sample.SpacingOptions.PointType,
    enum: true,
    json_name: "pointType"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.Sample.Filter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_location_count: integer,
          spacing: Google.Maps.Playablelocations.V3.Sample.SpacingOptions.t() | nil,
          included_types: [String.t()]
        }

  defstruct [:max_location_count, :spacing, :included_types]

  field :max_location_count, 1, type: :int32, json_name: "maxLocationCount"
  field :spacing, 2, type: Google.Maps.Playablelocations.V3.Sample.SpacingOptions
  field :included_types, 3, repeated: true, type: :string, json_name: "includedTypes"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.Sample.Criterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_object_type: integer,
          filter: Google.Maps.Playablelocations.V3.Sample.Filter.t() | nil,
          fields_to_return: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:game_object_type, :filter, :fields_to_return]

  field :game_object_type, 1, type: :int32, json_name: "gameObjectType"
  field :filter, 2, type: Google.Maps.Playablelocations.V3.Sample.Filter
  field :fields_to_return, 3, type: Google.Protobuf.FieldMask, json_name: "fieldsToReturn"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.Sample.AreaFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          s2_cell_id: non_neg_integer
        }

  defstruct [:s2_cell_id]

  field :s2_cell_id, 1, type: :fixed64, json_name: "s2CellId"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.Sample.PlayableLocationList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations: [Google.Maps.Playablelocations.V3.Sample.PlayableLocation.t()]
        }

  defstruct [:locations]

  field :locations, 1,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.Sample.PlayableLocation

  def transform_module(), do: nil
end
