defmodule Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat.JsonFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat.ProtobufFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :schema_definition, 1, type: :string, json_name: "schemaDefinition", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat.AvroFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :schema_definition, 1, type: :string, json_name: "schemaDefinition", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :kind, 0

  field :protobuf, 1,
    type: Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat.ProtobufFormat,
    oneof: 0,
    deprecated: false

  field :avro, 2,
    type: Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat.AvroFormat,
    oneof: 0,
    deprecated: false

  field :json, 3,
    type: Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat.JsonFormat,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Destination.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :network_attachment, 1, type: :string, json_name: "networkAttachment", deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Destination.HttpEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :message_binding_template, 3,
    type: :string,
    json_name: "messageBindingTemplate",
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Destination.AuthenticationConfig.OidcToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
  field :audience, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Destination.AuthenticationConfig.OAuthToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
  field :scope, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Destination.AuthenticationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :authentication_method_descriptor, 0

  field :google_oidc, 1,
    type: Google.Cloud.Eventarc.V1.Pipeline.Destination.AuthenticationConfig.OidcToken,
    json_name: "googleOidc",
    oneof: 0,
    deprecated: false

  field :oauth_token, 2,
    type: Google.Cloud.Eventarc.V1.Pipeline.Destination.AuthenticationConfig.OAuthToken,
    json_name: "oauthToken",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :destination_descriptor, 0

  field :network_config, 1,
    type: Google.Cloud.Eventarc.V1.Pipeline.Destination.NetworkConfig,
    json_name: "networkConfig",
    deprecated: false

  field :http_endpoint, 2,
    type: Google.Cloud.Eventarc.V1.Pipeline.Destination.HttpEndpoint,
    json_name: "httpEndpoint",
    oneof: 0,
    deprecated: false

  field :workflow, 3, type: :string, oneof: 0, deprecated: false
  field :message_bus, 4, type: :string, json_name: "messageBus", oneof: 0, deprecated: false
  field :topic, 8, type: :string, oneof: 0, deprecated: false

  field :authentication_config, 5,
    type: Google.Cloud.Eventarc.V1.Pipeline.Destination.AuthenticationConfig,
    json_name: "authenticationConfig",
    deprecated: false

  field :output_payload_format, 6,
    type: Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat,
    json_name: "outputPayloadFormat",
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Mediation.Transformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :transformation_template, 1,
    type: :string,
    json_name: "transformationTemplate",
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.Mediation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :mediation_descriptor, 0

  field :transformation, 1,
    type: Google.Cloud.Eventarc.V1.Pipeline.Mediation.Transformation,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.RetryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :max_attempts, 1, type: :int32, json_name: "maxAttempts", deprecated: false

  field :min_retry_delay, 2,
    type: Google.Protobuf.Duration,
    json_name: "minRetryDelay",
    deprecated: false

  field :max_retry_delay, 3,
    type: Google.Protobuf.Duration,
    json_name: "maxRetryDelay",
    deprecated: false
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.Pipeline.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.Pipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

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
    type: Google.Cloud.Eventarc.V1.Pipeline.LabelsEntry,
    map: true,
    deprecated: false

  field :uid, 5, type: :string, deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.Pipeline.AnnotationsEntry,
    map: true,
    deprecated: false

  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false

  field :destinations, 8,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.Pipeline.Destination,
    deprecated: false

  field :mediations, 9,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.Pipeline.Mediation,
    deprecated: false

  field :crypto_key_name, 10, type: :string, json_name: "cryptoKeyName", deprecated: false

  field :input_payload_format, 11,
    type: Google.Cloud.Eventarc.V1.Pipeline.MessagePayloadFormat,
    json_name: "inputPayloadFormat",
    deprecated: false

  field :logging_config, 12,
    type: Google.Cloud.Eventarc.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false

  field :retry_policy, 13,
    type: Google.Cloud.Eventarc.V1.Pipeline.RetryPolicy,
    json_name: "retryPolicy",
    deprecated: false

  field :etag, 99, type: :string
end
