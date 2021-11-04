defmodule Google.Devtools.Resultstore.V2.Language do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LANGUAGE_UNSPECIFIED
          | :NONE
          | :ANDROID
          | :AS
          | :CC
          | :CSS
          | :DART
          | :GO
          | :GWT
          | :HASKELL
          | :JAVA
          | :JS
          | :LISP
          | :OBJC
          | :PY
          | :SH
          | :SWIFT
          | :TS
          | :WEB
          | :SCALA
          | :PROTO
          | :XML

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATUS_UNSPECIFIED
          | :BUILDING
          | :BUILT
          | :FAILED_TO_BUILD
          | :TESTING
          | :PASSED
          | :FAILED
          | :TIMED_OUT
          | :CANCELLED
          | :TOOL_FAILED
          | :INCOMPLETE
          | :FLAKY
          | :UNKNOWN
          | :SKIPPED

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UPLOAD_STATUS_UNSPECIFIED | :UPLOADING | :POST_PROCESSING | :IMMUTABLE

  field :UPLOAD_STATUS_UNSPECIFIED, 0
  field :UPLOADING, 1
  field :POST_PROCESSING, 2
  field :IMMUTABLE, 3
end

defmodule Google.Devtools.Resultstore.V2.StatusAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Devtools.Resultstore.V2.Status.t(),
          description: String.t()
        }

  defstruct [:status, :description]

  field :status, 1, type: Google.Devtools.Resultstore.V2.Status, enum: true
  field :description, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Resultstore.V2.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Resultstore.V2.Timing do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:start_time, :duration]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :duration, 2, type: Google.Protobuf.Duration

  def transform_module(), do: nil
end

defmodule Google.Devtools.Resultstore.V2.Dependency do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource:
            {:target, String.t()} | {:configured_target, String.t()} | {:action, String.t()},
          label: String.t()
        }

  defstruct [:resource, :label]

  oneof :resource, 0

  field :target, 1, type: :string, oneof: 0
  field :configured_target, 2, type: :string, json_name: "configuredTarget", oneof: 0
  field :action, 3, type: :string, oneof: 0
  field :label, 4, type: :string

  def transform_module(), do: nil
end
