defmodule Google.Devtools.Resultstore.V2.Language do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :LANGUAGE_UNSPECIFIED, 0
  field :NONE, 1
  field :ANDROID, 2
  field :AS, 3
  field :CC, 4
  field :CSS, 5
  field :DART, 6
  field :GO, 7
  field :GWT, 8
  field :HASKELL, 9
  field :JAVA, 10
  field :JS, 11
  field :LISP, 12
  field :OBJC, 13
  field :PY, 14
  field :SH, 15
  field :SWIFT, 16
  field :TS, 18
  field :WEB, 19
  field :SCALA, 20
  field :PROTO, 21
  field :XML, 22
end

defmodule Google.Devtools.Resultstore.V2.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :BUILDING, 1
  field :BUILT, 2
  field :FAILED_TO_BUILD, 3
  field :TESTING, 4
  field :PASSED, 5
  field :FAILED, 6
  field :TIMED_OUT, 7
  field :CANCELLED, 8
  field :TOOL_FAILED, 9
  field :INCOMPLETE, 10
  field :FLAKY, 11
  field :UNKNOWN, 12
  field :SKIPPED, 13
end

defmodule Google.Devtools.Resultstore.V2.UploadStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UPLOAD_STATUS_UNSPECIFIED, 0
  field :UPLOADING, 1
  field :POST_PROCESSING, 2
  field :IMMUTABLE, 3
end

defmodule Google.Devtools.Resultstore.V2.StatusAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status, 1, type: Google.Devtools.Resultstore.V2.Status, enum: true
  field :description, 2, type: :string
end

defmodule Google.Devtools.Resultstore.V2.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Resultstore.V2.Timing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :duration, 2, type: Google.Protobuf.Duration
end

defmodule Google.Devtools.Resultstore.V2.Dependency.Id do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_id, 2, type: :string, json_name: "targetId"
  field :configuration_id, 3, type: :string, json_name: "configurationId"
  field :action_id, 4, type: :string, json_name: "actionId"
end

defmodule Google.Devtools.Resultstore.V2.Dependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :resource, 0

  field :target, 1, type: :string, oneof: 0, deprecated: false

  field :configured_target, 2,
    type: :string,
    json_name: "configuredTarget",
    oneof: 0,
    deprecated: false

  field :action, 3, type: :string, oneof: 0, deprecated: false
  field :id, 5, type: Google.Devtools.Resultstore.V2.Dependency.Id
  field :label, 4, type: :string
end
