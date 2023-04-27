defmodule Google.Maps.Mapsplatformdatasets.V1alpha.Usage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :USAGE_UNSPECIFIED, 0
  field :USAGE_DATA_DRIVEN_STYLING, 1
  field :USAGE_AREA_AFFORDANCES, 2
  field :USAGE_ASSISTED_DRIVING, 3
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_IMPORTING, 1
  field :STATE_IMPORT_SUCCEEDED, 2
  field :STATE_IMPORT_FAILED, 3
end

defmodule Google.Maps.Mapsplatformdatasets.V1alpha.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data_source, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :version_id, 4, type: :string, json_name: "versionId"

  field :usage, 5,
    repeated: true,
    type: Google.Maps.Mapsplatformdatasets.V1alpha.Usage,
    enum: true

  field :local_file_source, 6,
    type: Google.Maps.Mapsplatformdatasets.V1alpha.LocalFileSource,
    json_name: "localFileSource",
    oneof: 0

  field :gcs_source, 7,
    type: Google.Maps.Mapsplatformdatasets.V1alpha.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :status, 12, type: Google.Maps.Mapsplatformdatasets.V1alpha.State, enum: true

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :version_create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "versionCreateTime",
    deprecated: false

  field :version_description, 11,
    type: :string,
    json_name: "versionDescription",
    deprecated: false
end