defmodule Google.Cloud.Iot.V1.MqttState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MQTT_STATE_UNSPECIFIED, 0
  field :MQTT_ENABLED, 1
  field :MQTT_DISABLED, 2
end

defmodule Google.Cloud.Iot.V1.HttpState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :HTTP_STATE_UNSPECIFIED, 0
  field :HTTP_ENABLED, 1
  field :HTTP_DISABLED, 2
end

defmodule Google.Cloud.Iot.V1.LogLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LOG_LEVEL_UNSPECIFIED, 0
  field :NONE, 10
  field :ERROR, 20
  field :INFO, 30
  field :DEBUG, 40
end

defmodule Google.Cloud.Iot.V1.GatewayType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :GATEWAY_TYPE_UNSPECIFIED, 0
  field :GATEWAY, 1
  field :NON_GATEWAY, 2
end

defmodule Google.Cloud.Iot.V1.GatewayAuthMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :GATEWAY_AUTH_METHOD_UNSPECIFIED, 0
  field :ASSOCIATION_ONLY, 1
  field :DEVICE_AUTH_TOKEN_ONLY, 2
  field :ASSOCIATION_AND_DEVICE_AUTH_TOKEN, 3
end

defmodule Google.Cloud.Iot.V1.PublicKeyCertificateFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT, 0
  field :X509_CERTIFICATE_PEM, 1
end

defmodule Google.Cloud.Iot.V1.PublicKeyFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED_PUBLIC_KEY_FORMAT, 0
  field :RSA_PEM, 3
  field :RSA_X509_PEM, 1
  field :ES256_PEM, 2
  field :ES256_X509_PEM, 4
end

defmodule Google.Cloud.Iot.V1.Device.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Iot.V1.Device do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :num_id, 3, type: :uint64, json_name: "numId"
  field :credentials, 12, repeated: true, type: Google.Cloud.Iot.V1.DeviceCredential
  field :last_heartbeat_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastHeartbeatTime"
  field :last_event_time, 8, type: Google.Protobuf.Timestamp, json_name: "lastEventTime"
  field :last_state_time, 20, type: Google.Protobuf.Timestamp, json_name: "lastStateTime"
  field :last_config_ack_time, 14, type: Google.Protobuf.Timestamp, json_name: "lastConfigAckTime"

  field :last_config_send_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "lastConfigSendTime"

  field :blocked, 19, type: :bool
  field :last_error_time, 10, type: Google.Protobuf.Timestamp, json_name: "lastErrorTime"
  field :last_error_status, 11, type: Google.Rpc.Status, json_name: "lastErrorStatus"
  field :config, 13, type: Google.Cloud.Iot.V1.DeviceConfig
  field :state, 16, type: Google.Cloud.Iot.V1.DeviceState
  field :log_level, 21, type: Google.Cloud.Iot.V1.LogLevel, json_name: "logLevel", enum: true
  field :metadata, 17, repeated: true, type: Google.Cloud.Iot.V1.Device.MetadataEntry, map: true
  field :gateway_config, 24, type: Google.Cloud.Iot.V1.GatewayConfig, json_name: "gatewayConfig"
end

defmodule Google.Cloud.Iot.V1.GatewayConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gateway_type, 1,
    type: Google.Cloud.Iot.V1.GatewayType,
    json_name: "gatewayType",
    enum: true

  field :gateway_auth_method, 2,
    type: Google.Cloud.Iot.V1.GatewayAuthMethod,
    json_name: "gatewayAuthMethod",
    enum: true

  field :last_accessed_gateway_id, 3, type: :string, json_name: "lastAccessedGatewayId"

  field :last_accessed_gateway_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAccessedGatewayTime"
end

defmodule Google.Cloud.Iot.V1.DeviceRegistry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string

  field :event_notification_configs, 10,
    repeated: true,
    type: Google.Cloud.Iot.V1.EventNotificationConfig,
    json_name: "eventNotificationConfigs"

  field :state_notification_config, 7,
    type: Google.Cloud.Iot.V1.StateNotificationConfig,
    json_name: "stateNotificationConfig"

  field :mqtt_config, 4, type: Google.Cloud.Iot.V1.MqttConfig, json_name: "mqttConfig"
  field :http_config, 9, type: Google.Cloud.Iot.V1.HttpConfig, json_name: "httpConfig"
  field :log_level, 11, type: Google.Cloud.Iot.V1.LogLevel, json_name: "logLevel", enum: true
  field :credentials, 8, repeated: true, type: Google.Cloud.Iot.V1.RegistryCredential
end

defmodule Google.Cloud.Iot.V1.MqttConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :mqtt_enabled_state, 1,
    type: Google.Cloud.Iot.V1.MqttState,
    json_name: "mqttEnabledState",
    enum: true
end

defmodule Google.Cloud.Iot.V1.HttpConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :http_enabled_state, 1,
    type: Google.Cloud.Iot.V1.HttpState,
    json_name: "httpEnabledState",
    enum: true
end

defmodule Google.Cloud.Iot.V1.EventNotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subfolder_matches, 2, type: :string, json_name: "subfolderMatches"
  field :pubsub_topic_name, 1, type: :string, json_name: "pubsubTopicName"
end

defmodule Google.Cloud.Iot.V1.StateNotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pubsub_topic_name, 1, type: :string, json_name: "pubsubTopicName"
end

defmodule Google.Cloud.Iot.V1.RegistryCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :credential, 0

  field :public_key_certificate, 1,
    type: Google.Cloud.Iot.V1.PublicKeyCertificate,
    json_name: "publicKeyCertificate",
    oneof: 0
end

defmodule Google.Cloud.Iot.V1.X509CertificateDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :issuer, 1, type: :string
  field :subject, 2, type: :string
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :expiry_time, 4, type: Google.Protobuf.Timestamp, json_name: "expiryTime"
  field :signature_algorithm, 5, type: :string, json_name: "signatureAlgorithm"
  field :public_key_type, 6, type: :string, json_name: "publicKeyType"
end

defmodule Google.Cloud.Iot.V1.PublicKeyCertificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :format, 1, type: Google.Cloud.Iot.V1.PublicKeyCertificateFormat, enum: true
  field :certificate, 2, type: :string

  field :x509_details, 3,
    type: Google.Cloud.Iot.V1.X509CertificateDetails,
    json_name: "x509Details"
end

defmodule Google.Cloud.Iot.V1.DeviceCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :credential, 0

  field :public_key, 2,
    type: Google.Cloud.Iot.V1.PublicKeyCredential,
    json_name: "publicKey",
    oneof: 0

  field :expiration_time, 6, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
end

defmodule Google.Cloud.Iot.V1.PublicKeyCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :format, 1, type: Google.Cloud.Iot.V1.PublicKeyFormat, enum: true
  field :key, 2, type: :string
end

defmodule Google.Cloud.Iot.V1.DeviceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: :int64
  field :cloud_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "cloudUpdateTime"
  field :device_ack_time, 3, type: Google.Protobuf.Timestamp, json_name: "deviceAckTime"
  field :binary_data, 4, type: :bytes, json_name: "binaryData"
end

defmodule Google.Cloud.Iot.V1.DeviceState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :binary_data, 2, type: :bytes, json_name: "binaryData"
end