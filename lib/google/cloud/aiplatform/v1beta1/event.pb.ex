defmodule Google.Cloud.Aiplatform.V1beta1.Event.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INPUT, 1
  field :OUTPUT, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Event.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :artifact, 1, type: :string, deprecated: false
  field :execution, 2, type: :string, deprecated: false
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
  field :type, 4, type: Google.Cloud.Aiplatform.V1beta1.Event.Type, enum: true, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Event.LabelsEntry,
    map: true
end