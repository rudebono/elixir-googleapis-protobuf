defmodule Google.Maps.Mapsplatformdatasets.V1.Usage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :USAGE_UNSPECIFIED, 0
  field :USAGE_DATA_DRIVEN_STYLING, 1
end

defmodule Google.Maps.Mapsplatformdatasets.V1.Status.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_IMPORTING, 1
  field :STATE_IMPORT_SUCCEEDED, 2
  field :STATE_IMPORT_FAILED, 3
  field :STATE_DELETING, 4
  field :STATE_DELETION_FAILED, 5
  field :STATE_PROCESSING, 6
  field :STATE_PROCESSING_FAILED, 7
  field :STATE_NEEDS_REVIEW, 8
  field :STATE_PUBLISHING, 9
  field :STATE_PUBLISHING_FAILED, 10
  field :STATE_COMPLETED, 11
end

defmodule Google.Maps.Mapsplatformdatasets.V1.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data_source, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :version_id, 4, type: :string, json_name: "versionId"
  field :usage, 5, repeated: true, type: Google.Maps.Mapsplatformdatasets.V1.Usage, enum: true

  field :local_file_source, 6,
    type: Google.Maps.Mapsplatformdatasets.V1.LocalFileSource,
    json_name: "localFileSource",
    oneof: 0

  field :gcs_source, 7,
    type: Google.Maps.Mapsplatformdatasets.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :status, 12, type: Google.Maps.Mapsplatformdatasets.V1.Status, deprecated: false

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

defmodule Google.Maps.Mapsplatformdatasets.V1.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1, type: Google.Maps.Mapsplatformdatasets.V1.Status.State, enum: true
  field :error_message, 2, type: :string, json_name: "errorMessage"
end