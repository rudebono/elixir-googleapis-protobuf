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

  defstruct [:key, :value]

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

  defstruct [
    :id,
    :name,
    :num_id,
    :credentials,
    :last_heartbeat_time,
    :last_event_time,
    :last_state_time,
    :last_config_ack_time,
    :last_config_send_time,
    :blocked,
    :last_error_time,
    :last_error_status,
    :config,
    :state,
    :log_level,
    :metadata,
    :gateway_config
  ]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :num_id, 3, type: :uint64
  field :credentials, 12, repeated: true, type: Google.Cloud.Iot.V1.DeviceCredential
  field :last_heartbeat_time, 7, type: Google.Protobuf.Timestamp
  field :last_event_time, 8, type: Google.Protobuf.Timestamp
  field :last_state_time, 20, type: Google.Protobuf.Timestamp
  field :last_config_ack_time, 14, type: Google.Protobuf.Timestamp
  field :last_config_send_time, 18, type: Google.Protobuf.Timestamp
  field :blocked, 19, type: :bool
  field :last_error_time, 10, type: Google.Protobuf.Timestamp
  field :last_error_status, 11, type: Google.Rpc.Status
  field :config, 13, type: Google.Cloud.Iot.V1.DeviceConfig
  field :state, 16, type: Google.Cloud.Iot.V1.DeviceState
  field :log_level, 21, type: Google.Cloud.Iot.V1.LogLevel, enum: true
  field :metadata, 17, repeated: true, type: Google.Cloud.Iot.V1.Device.MetadataEntry, map: true
  field :gateway_config, 24, type: Google.Cloud.Iot.V1.GatewayConfig
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

  defstruct [
    :gateway_type,
    :gateway_auth_method,
    :last_accessed_gateway_id,
    :last_accessed_gateway_time
  ]

  field :gateway_type, 1, type: Google.Cloud.Iot.V1.GatewayType, enum: true
  field :gateway_auth_method, 2, type: Google.Cloud.Iot.V1.GatewayAuthMethod, enum: true
  field :last_accessed_gateway_id, 3, type: :string
  field :last_accessed_gateway_time, 4, type: Google.Protobuf.Timestamp
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

  defstruct [
    :id,
    :name,
    :event_notification_configs,
    :state_notification_config,
    :mqtt_config,
    :http_config,
    :log_level,
    :credentials
  ]

  field :id, 1, type: :string
  field :name, 2, type: :string

  field :event_notification_configs, 10,
    repeated: true,
    type: Google.Cloud.Iot.V1.EventNotificationConfig

  field :state_notification_config, 7, type: Google.Cloud.Iot.V1.StateNotificationConfig
  field :mqtt_config, 4, type: Google.Cloud.Iot.V1.MqttConfig
  field :http_config, 9, type: Google.Cloud.Iot.V1.HttpConfig
  field :log_level, 11, type: Google.Cloud.Iot.V1.LogLevel, enum: true
  field :credentials, 8, repeated: true, type: Google.Cloud.Iot.V1.RegistryCredential
end

defmodule Google.Cloud.Iot.V1.MqttConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mqtt_enabled_state: Google.Cloud.Iot.V1.MqttState.t()
        }

  defstruct [:mqtt_enabled_state]

  field :mqtt_enabled_state, 1, type: Google.Cloud.Iot.V1.MqttState, enum: true
end

defmodule Google.Cloud.Iot.V1.HttpConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_enabled_state: Google.Cloud.Iot.V1.HttpState.t()
        }

  defstruct [:http_enabled_state]

  field :http_enabled_state, 1, type: Google.Cloud.Iot.V1.HttpState, enum: true
end

defmodule Google.Cloud.Iot.V1.EventNotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subfolder_matches: String.t(),
          pubsub_topic_name: String.t()
        }

  defstruct [:subfolder_matches, :pubsub_topic_name]

  field :subfolder_matches, 2, type: :string
  field :pubsub_topic_name, 1, type: :string
end

defmodule Google.Cloud.Iot.V1.StateNotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pubsub_topic_name: String.t()
        }

  defstruct [:pubsub_topic_name]

  field :pubsub_topic_name, 1, type: :string
end

defmodule Google.Cloud.Iot.V1.RegistryCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          credential: {atom, any}
        }

  defstruct [:credential]

  oneof :credential, 0
  field :public_key_certificate, 1, type: Google.Cloud.Iot.V1.PublicKeyCertificate, oneof: 0
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

  defstruct [:issuer, :subject, :start_time, :expiry_time, :signature_algorithm, :public_key_type]

  field :issuer, 1, type: :string
  field :subject, 2, type: :string
  field :start_time, 3, type: Google.Protobuf.Timestamp
  field :expiry_time, 4, type: Google.Protobuf.Timestamp
  field :signature_algorithm, 5, type: :string
  field :public_key_type, 6, type: :string
end

defmodule Google.Cloud.Iot.V1.PublicKeyCertificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Cloud.Iot.V1.PublicKeyCertificateFormat.t(),
          certificate: String.t(),
          x509_details: Google.Cloud.Iot.V1.X509CertificateDetails.t() | nil
        }

  defstruct [:format, :certificate, :x509_details]

  field :format, 1, type: Google.Cloud.Iot.V1.PublicKeyCertificateFormat, enum: true
  field :certificate, 2, type: :string
  field :x509_details, 3, type: Google.Cloud.Iot.V1.X509CertificateDetails
end

defmodule Google.Cloud.Iot.V1.DeviceCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          credential: {atom, any},
          expiration_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:credential, :expiration_time]

  oneof :credential, 0
  field :public_key, 2, type: Google.Cloud.Iot.V1.PublicKeyCredential, oneof: 0
  field :expiration_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Iot.V1.PublicKeyCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Cloud.Iot.V1.PublicKeyFormat.t(),
          key: String.t()
        }

  defstruct [:format, :key]

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

  defstruct [:version, :cloud_update_time, :device_ack_time, :binary_data]

  field :version, 1, type: :int64
  field :cloud_update_time, 2, type: Google.Protobuf.Timestamp
  field :device_ack_time, 3, type: Google.Protobuf.Timestamp
  field :binary_data, 4, type: :bytes
end

defmodule Google.Cloud.Iot.V1.DeviceState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_time: Google.Protobuf.Timestamp.t() | nil,
          binary_data: binary
        }

  defstruct [:update_time, :binary_data]

  field :update_time, 1, type: Google.Protobuf.Timestamp
  field :binary_data, 2, type: :bytes
end
