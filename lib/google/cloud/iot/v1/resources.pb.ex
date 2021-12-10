defmodule Google.Cloud.Iot.V1.MqttState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MQTT_STATE_UNSPECIFIED | :MQTT_ENABLED | :MQTT_DISABLED

  field :MQTT_STATE_UNSPECIFIED, 0
  field :MQTT_ENABLED, 1
  field :MQTT_DISABLED, 2
end
defmodule Google.Cloud.Iot.V1.HttpState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :HTTP_STATE_UNSPECIFIED | :HTTP_ENABLED | :HTTP_DISABLED

  field :HTTP_STATE_UNSPECIFIED, 0
  field :HTTP_ENABLED, 1
  field :HTTP_DISABLED, 2
end
defmodule Google.Cloud.Iot.V1.LogLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOG_LEVEL_UNSPECIFIED | :NONE | :ERROR | :INFO | :DEBUG

  field :LOG_LEVEL_UNSPECIFIED, 0
  field :NONE, 10
  field :ERROR, 20
  field :INFO, 30
  field :DEBUG, 40
end
defmodule Google.Cloud.Iot.V1.GatewayType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :GATEWAY_TYPE_UNSPECIFIED | :GATEWAY | :NON_GATEWAY

  field :GATEWAY_TYPE_UNSPECIFIED, 0
  field :GATEWAY, 1
  field :NON_GATEWAY, 2
end
defmodule Google.Cloud.Iot.V1.GatewayAuthMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :GATEWAY_AUTH_METHOD_UNSPECIFIED
          | :ASSOCIATION_ONLY
          | :DEVICE_AUTH_TOKEN_ONLY
          | :ASSOCIATION_AND_DEVICE_AUTH_TOKEN

  field :GATEWAY_AUTH_METHOD_UNSPECIFIED, 0
  field :ASSOCIATION_ONLY, 1
  field :DEVICE_AUTH_TOKEN_ONLY, 2
  field :ASSOCIATION_AND_DEVICE_AUTH_TOKEN, 3
end
defmodule Google.Cloud.Iot.V1.PublicKeyCertificateFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT | :X509_CERTIFICATE_PEM

  field :UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT, 0
  field :X509_CERTIFICATE_PEM, 1
end
defmodule Google.Cloud.Iot.V1.PublicKeyFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED_PUBLIC_KEY_FORMAT
          | :RSA_PEM
          | :RSA_X509_PEM
          | :ES256_PEM
          | :ES256_X509_PEM

  field :UNSPECIFIED_PUBLIC_KEY_FORMAT, 0
  field :RSA_PEM, 3
  field :RSA_X509_PEM, 1
  field :ES256_PEM, 2
  field :ES256_X509_PEM, 4
end
defmodule Google.Cloud.Iot.V1.Device.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Iot.V1.Device do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          num_id: non_neg_integer,
          credentials: [Google.Cloud.Iot.V1.DeviceCredential.t()],
          last_heartbeat_time: Google.Protobuf.Timestamp.t() | nil,
          last_event_time: Google.Protobuf.Timestamp.t() | nil,
          last_state_time: Google.Protobuf.Timestamp.t() | nil,
          last_config_ack_time: Google.Protobuf.Timestamp.t() | nil,
          last_config_send_time: Google.Protobuf.Timestamp.t() | nil,
          blocked: boolean,
          last_error_time: Google.Protobuf.Timestamp.t() | nil,
          last_error_status: Google.Rpc.Status.t() | nil,
          config: Google.Cloud.Iot.V1.DeviceConfig.t() | nil,
          state: Google.Cloud.Iot.V1.DeviceState.t() | nil,
          log_level: Google.Cloud.Iot.V1.LogLevel.t(),
          metadata: %{String.t() => String.t()},
          gateway_config: Google.Cloud.Iot.V1.GatewayConfig.t() | nil
        }

  defstruct id: "",
            name: "",
            num_id: 0,
            credentials: [],
            last_heartbeat_time: nil,
            last_event_time: nil,
            last_state_time: nil,
            last_config_ack_time: nil,
            last_config_send_time: nil,
            blocked: false,
            last_error_time: nil,
            last_error_status: nil,
            config: nil,
            state: nil,
            log_level: :LOG_LEVEL_UNSPECIFIED,
            metadata: %{},
            gateway_config: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gateway_type: Google.Cloud.Iot.V1.GatewayType.t(),
          gateway_auth_method: Google.Cloud.Iot.V1.GatewayAuthMethod.t(),
          last_accessed_gateway_id: String.t(),
          last_accessed_gateway_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct gateway_type: :GATEWAY_TYPE_UNSPECIFIED,
            gateway_auth_method: :GATEWAY_AUTH_METHOD_UNSPECIFIED,
            last_accessed_gateway_id: "",
            last_accessed_gateway_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          event_notification_configs: [Google.Cloud.Iot.V1.EventNotificationConfig.t()],
          state_notification_config: Google.Cloud.Iot.V1.StateNotificationConfig.t() | nil,
          mqtt_config: Google.Cloud.Iot.V1.MqttConfig.t() | nil,
          http_config: Google.Cloud.Iot.V1.HttpConfig.t() | nil,
          log_level: Google.Cloud.Iot.V1.LogLevel.t(),
          credentials: [Google.Cloud.Iot.V1.RegistryCredential.t()]
        }

  defstruct id: "",
            name: "",
            event_notification_configs: [],
            state_notification_config: nil,
            mqtt_config: nil,
            http_config: nil,
            log_level: :LOG_LEVEL_UNSPECIFIED,
            credentials: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mqtt_enabled_state: Google.Cloud.Iot.V1.MqttState.t()
        }

  defstruct mqtt_enabled_state: :MQTT_STATE_UNSPECIFIED

  field :mqtt_enabled_state, 1,
    type: Google.Cloud.Iot.V1.MqttState,
    json_name: "mqttEnabledState",
    enum: true
end
defmodule Google.Cloud.Iot.V1.HttpConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_enabled_state: Google.Cloud.Iot.V1.HttpState.t()
        }

  defstruct http_enabled_state: :HTTP_STATE_UNSPECIFIED

  field :http_enabled_state, 1,
    type: Google.Cloud.Iot.V1.HttpState,
    json_name: "httpEnabledState",
    enum: true
end
defmodule Google.Cloud.Iot.V1.EventNotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subfolder_matches: String.t(),
          pubsub_topic_name: String.t()
        }

  defstruct subfolder_matches: "",
            pubsub_topic_name: ""

  field :subfolder_matches, 2, type: :string, json_name: "subfolderMatches"
  field :pubsub_topic_name, 1, type: :string, json_name: "pubsubTopicName"
end
defmodule Google.Cloud.Iot.V1.StateNotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pubsub_topic_name: String.t()
        }

  defstruct pubsub_topic_name: ""

  field :pubsub_topic_name, 1, type: :string, json_name: "pubsubTopicName"
end
defmodule Google.Cloud.Iot.V1.RegistryCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          credential:
            {:public_key_certificate, Google.Cloud.Iot.V1.PublicKeyCertificate.t() | nil}
        }

  defstruct credential: nil

  oneof :credential, 0

  field :public_key_certificate, 1,
    type: Google.Cloud.Iot.V1.PublicKeyCertificate,
    json_name: "publicKeyCertificate",
    oneof: 0
end
defmodule Google.Cloud.Iot.V1.X509CertificateDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer: String.t(),
          subject: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          expiry_time: Google.Protobuf.Timestamp.t() | nil,
          signature_algorithm: String.t(),
          public_key_type: String.t()
        }

  defstruct issuer: "",
            subject: "",
            start_time: nil,
            expiry_time: nil,
            signature_algorithm: "",
            public_key_type: ""

  field :issuer, 1, type: :string
  field :subject, 2, type: :string
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :expiry_time, 4, type: Google.Protobuf.Timestamp, json_name: "expiryTime"
  field :signature_algorithm, 5, type: :string, json_name: "signatureAlgorithm"
  field :public_key_type, 6, type: :string, json_name: "publicKeyType"
end
defmodule Google.Cloud.Iot.V1.PublicKeyCertificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Cloud.Iot.V1.PublicKeyCertificateFormat.t(),
          certificate: String.t(),
          x509_details: Google.Cloud.Iot.V1.X509CertificateDetails.t() | nil
        }

  defstruct format: :UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT,
            certificate: "",
            x509_details: nil

  field :format, 1, type: Google.Cloud.Iot.V1.PublicKeyCertificateFormat, enum: true
  field :certificate, 2, type: :string

  field :x509_details, 3,
    type: Google.Cloud.Iot.V1.X509CertificateDetails,
    json_name: "x509Details"
end
defmodule Google.Cloud.Iot.V1.DeviceCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          credential: {:public_key, Google.Cloud.Iot.V1.PublicKeyCredential.t() | nil},
          expiration_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct credential: nil,
            expiration_time: nil

  oneof :credential, 0

  field :public_key, 2,
    type: Google.Cloud.Iot.V1.PublicKeyCredential,
    json_name: "publicKey",
    oneof: 0

  field :expiration_time, 6, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
end
defmodule Google.Cloud.Iot.V1.PublicKeyCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Cloud.Iot.V1.PublicKeyFormat.t(),
          key: String.t()
        }

  defstruct format: :UNSPECIFIED_PUBLIC_KEY_FORMAT,
            key: ""

  field :format, 1, type: Google.Cloud.Iot.V1.PublicKeyFormat, enum: true
  field :key, 2, type: :string
end
defmodule Google.Cloud.Iot.V1.DeviceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: integer,
          cloud_update_time: Google.Protobuf.Timestamp.t() | nil,
          device_ack_time: Google.Protobuf.Timestamp.t() | nil,
          binary_data: binary
        }

  defstruct version: 0,
            cloud_update_time: nil,
            device_ack_time: nil,
            binary_data: ""

  field :version, 1, type: :int64
  field :cloud_update_time, 2, type: Google.Protobuf.Timestamp, json_name: "cloudUpdateTime"
  field :device_ack_time, 3, type: Google.Protobuf.Timestamp, json_name: "deviceAckTime"
  field :binary_data, 4, type: :bytes, json_name: "binaryData"
end
defmodule Google.Cloud.Iot.V1.DeviceState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_time: Google.Protobuf.Timestamp.t() | nil,
          binary_data: binary
        }

  defstruct update_time: nil,
            binary_data: ""

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :binary_data, 2, type: :bytes, json_name: "binaryData"
end
