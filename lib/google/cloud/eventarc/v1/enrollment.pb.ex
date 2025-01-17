defmodule Google.Cloud.Eventarc.V1.Enrollment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.Enrollment.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.Enrollment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :etag, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.Enrollment.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 7,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.Enrollment.AnnotationsEntry,
    map: true,
    deprecated: false

  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false
  field :cel_match, 9, type: :string, json_name: "celMatch", deprecated: false
  field :message_bus, 10, type: :string, json_name: "messageBus", deprecated: false
  field :destination, 11, type: :string, deprecated: false
end
