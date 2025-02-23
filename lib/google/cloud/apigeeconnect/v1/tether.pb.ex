defmodule Google.Cloud.Apigeeconnect.V1.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :OPEN_NEW_STREAM, 1
end

defmodule Google.Cloud.Apigeeconnect.V1.TetherEndpoint do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TETHER_ENDPOINT_UNSPECIFIED, 0
  field :APIGEE_MART, 1
  field :APIGEE_RUNTIME, 2
  field :APIGEE_MINT_RATING, 3
end

defmodule Google.Cloud.Apigeeconnect.V1.Scheme do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SCHEME_UNSPECIFIED, 0
  field :HTTPS, 1
end

defmodule Google.Cloud.Apigeeconnect.V1.EgressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :payload, 2, type: Google.Cloud.Apigeeconnect.V1.Payload
  field :endpoint, 3, type: Google.Cloud.Apigeeconnect.V1.TetherEndpoint, enum: true
  field :project, 4, type: :string
  field :trace_id, 5, type: :string, json_name: "traceId"
  field :timeout, 6, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Apigeeconnect.V1.Payload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :http_request, 1,
    type: Google.Cloud.Apigeeconnect.V1.HttpRequest,
    json_name: "httpRequest",
    oneof: 0

  field :stream_info, 2,
    type: Google.Cloud.Apigeeconnect.V1.StreamInfo,
    json_name: "streamInfo",
    oneof: 0

  field :action, 3, type: Google.Cloud.Apigeeconnect.V1.Action, enum: true, oneof: 0
end

defmodule Google.Cloud.Apigeeconnect.V1.StreamInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.EgressResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string

  field :http_response, 2,
    type: Google.Cloud.Apigeeconnect.V1.HttpResponse,
    json_name: "httpResponse"

  field :status, 3, type: Google.Rpc.Status
  field :project, 4, type: :string
  field :trace_id, 5, type: :string, json_name: "traceId"
  field :endpoint, 6, type: Google.Cloud.Apigeeconnect.V1.TetherEndpoint, enum: true
  field :name, 7, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.HttpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :method, 2, type: :string
  field :url, 3, type: Google.Cloud.Apigeeconnect.V1.Url
  field :headers, 4, repeated: true, type: Google.Cloud.Apigeeconnect.V1.Header
  field :body, 5, type: :bytes
end

defmodule Google.Cloud.Apigeeconnect.V1.Url do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :scheme, 1, type: Google.Cloud.Apigeeconnect.V1.Scheme, enum: true
  field :host, 2, type: :string
  field :path, 3, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :values, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.HttpResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :status, 2, type: :string
  field :status_code, 3, type: :int32, json_name: "statusCode"
  field :body, 4, type: :bytes
  field :headers, 5, repeated: true, type: Google.Cloud.Apigeeconnect.V1.Header
  field :content_length, 6, type: :int64, json_name: "contentLength"
end

defmodule Google.Cloud.Apigeeconnect.V1.Tether.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apigeeconnect.v1.Tether",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Egress,
      stream(Google.Cloud.Apigeeconnect.V1.EgressResponse),
      stream(Google.Cloud.Apigeeconnect.V1.EgressRequest)
end

defmodule Google.Cloud.Apigeeconnect.V1.Tether.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apigeeconnect.V1.Tether.Service
end
