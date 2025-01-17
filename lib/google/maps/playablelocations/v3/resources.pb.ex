defmodule Google.Maps.Playablelocations.V3.PlayerReport.BadLocationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BAD_LOCATION_REASON_UNSPECIFIED, 0
  field :OTHER, 1
  field :NOT_PEDESTRIAN_ACCESSIBLE, 2
  field :NOT_OPEN_TO_PUBLIC, 4
  field :PERMANENTLY_CLOSED, 5
  field :TEMPORARILY_INACCESSIBLE, 6
end

defmodule Google.Maps.Playablelocations.V3.Impression.ImpressionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :IMPRESSION_TYPE_UNSPECIFIED, 0
  field :PRESENTED, 1
  field :INTERACTED, 2
end

defmodule Google.Maps.Playablelocations.V3.PlayerReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location_name, 1, type: :string, json_name: "locationName", deprecated: false

  field :reasons, 2,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.PlayerReport.BadLocationReason,
    enum: true,
    deprecated: false

  field :reason_details, 3, type: :string, json_name: "reasonDetails", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Maps.Playablelocations.V3.Impression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location_name, 1, type: :string, json_name: "locationName", deprecated: false

  field :impression_type, 2,
    type: Google.Maps.Playablelocations.V3.Impression.ImpressionType,
    json_name: "impressionType",
    enum: true,
    deprecated: false

  field :game_object_type, 4, type: :int32, json_name: "gameObjectType"
end
