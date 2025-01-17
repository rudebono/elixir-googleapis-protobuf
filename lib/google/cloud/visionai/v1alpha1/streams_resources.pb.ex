defmodule Google.Cloud.Visionai.V1alpha1.Event.Clock do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CLOCK_UNSPECIFIED, 0
  field :CAPTURE, 1
  field :INGEST, 2
end

defmodule Google.Cloud.Visionai.V1alpha1.Stream.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Stream.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Stream do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Stream.LabelsEntry,
    map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Stream.AnnotationsEntry,
    map: true

  field :display_name, 6, type: :string, json_name: "displayName"
  field :enable_hls_playback, 7, type: :bool, json_name: "enableHlsPlayback"
  field :media_warehouse_asset, 8, type: :string, json_name: "mediaWarehouseAsset"
end

defmodule Google.Cloud.Visionai.V1alpha1.Event.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Event.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Event.LabelsEntry,
    map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Event.AnnotationsEntry,
    map: true

  field :alignment_clock, 6,
    type: Google.Cloud.Visionai.V1alpha1.Event.Clock,
    json_name: "alignmentClock",
    enum: true

  field :grace_period, 7, type: Google.Protobuf.Duration, json_name: "gracePeriod"
end

defmodule Google.Cloud.Visionai.V1alpha1.Series.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Series.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Series do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Series.LabelsEntry,
    map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Series.AnnotationsEntry,
    map: true

  field :stream, 6, type: :string, deprecated: false
  field :event, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.Channel.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Channel.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Channel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Channel.LabelsEntry,
    map: true

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Channel.AnnotationsEntry,
    map: true

  field :stream, 6, type: :string, deprecated: false
  field :event, 7, type: :string, deprecated: false
end
