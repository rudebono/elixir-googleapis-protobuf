defmodule Google.Cloud.Securitycenter.Settings.V1beta1.GetServiceAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ServiceAccount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :service_account, 2, type: :string, json_name: "serviceAccount"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.GetSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.UpdateSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :settings, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings,
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ResetSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchGetSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchGetSettingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :settings, 1, repeated: true, type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchCalculateEffectiveSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveSettingsRequest
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchCalculateEffectiveSettingsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :settings, 1, repeated: true, type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.GetComponentSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.UpdateComponentSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :component_settings, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings,
    json_name: "componentSettings",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ResetComponentSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveComponentSettingsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListDetectorsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListDetectorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :detectors, 1, repeated: true, type: Google.Cloud.Securitycenter.Settings.V1beta1.Detector
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListComponentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListComponentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :components, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SecurityCenterSettingsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetServiceAccount,
      Google.Cloud.Securitycenter.Settings.V1beta1.GetServiceAccountRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.ServiceAccount

  rpc :GetSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.GetSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.Settings

  rpc :UpdateSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.UpdateSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.Settings

  rpc :ResetSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.ResetSettingsRequest,
      Google.Protobuf.Empty

  rpc :BatchGetSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.BatchGetSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.BatchGetSettingsResponse

  rpc :CalculateEffectiveSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.Settings

  rpc :BatchCalculateEffectiveSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.BatchCalculateEffectiveSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.BatchCalculateEffectiveSettingsResponse

  rpc :GetComponentSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.GetComponentSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings

  rpc :UpdateComponentSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.UpdateComponentSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings

  rpc :ResetComponentSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.ResetComponentSettingsRequest,
      Google.Protobuf.Empty

  rpc :CalculateEffectiveComponentSettings,
      Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveComponentSettingsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings

  rpc :ListDetectors,
      Google.Cloud.Securitycenter.Settings.V1beta1.ListDetectorsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.ListDetectorsResponse

  rpc :ListComponents,
      Google.Cloud.Securitycenter.Settings.V1beta1.ListComponentsRequest,
      Google.Cloud.Securitycenter.Settings.V1beta1.ListComponentsResponse
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SecurityCenterSettingsService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Securitycenter.Settings.V1beta1.SecurityCenterSettingsService.Service
end