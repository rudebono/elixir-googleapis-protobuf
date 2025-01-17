defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.PayloadFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PAYLOAD_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
  field :PROTO, 2
  field :AVRO, 3
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageResponseReceived.RetryStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RETRY_STATUS_UNSPECIFIED, 0
  field :WILL_RETRY, 1
  field :RETRY_EXHAUSTED, 2
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageReceived do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :details, 1, type: :string

  field :input_payload_format, 2,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.PayloadFormat,
    json_name: "inputPayloadFormat",
    enum: true

  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageTransformed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :details, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageConverted do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :details, 1, type: :string

  field :input_payload_format, 2,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.PayloadFormat,
    json_name: "inputPayloadFormat",
    enum: true

  field :output_payload_format, 3,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.PayloadFormat,
    json_name: "outputPayloadFormat",
    enum: true

  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageRequestDispatched do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :details, 1, type: :string
  field :destination, 2, type: :string
  field :error, 3, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageResponseReceived do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :details, 1, type: :string

  field :retry_status, 2,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageResponseReceived.RetryStatus,
    json_name: "retryStatus",
    enum: true

  field :retry_time, 3, type: Google.Protobuf.Timestamp, json_name: "retryTime"
  field :http_response_code, 4, type: :int32, json_name: "httpResponseCode"
  field :error, 5, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.Logging.V1.PipelineActivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :activity, 0

  field :message_uid, 1, type: :string, json_name: "messageUid", deprecated: false

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.AttributesEntry,
    map: true

  field :activity_time, 3, type: Google.Protobuf.Timestamp, json_name: "activityTime"

  field :message_received, 4,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageReceived,
    json_name: "messageReceived",
    oneof: 0

  field :message_transformed, 5,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageTransformed,
    json_name: "messageTransformed",
    oneof: 0

  field :message_converted, 6,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageConverted,
    json_name: "messageConverted",
    oneof: 0

  field :message_request_dispatched, 7,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageRequestDispatched,
    json_name: "messageRequestDispatched",
    oneof: 0

  field :message_response_received, 8,
    type: Google.Cloud.Eventarc.Logging.V1.PipelineActivity.MessageResponseReceived,
    json_name: "messageResponseReceived",
    oneof: 0
end
