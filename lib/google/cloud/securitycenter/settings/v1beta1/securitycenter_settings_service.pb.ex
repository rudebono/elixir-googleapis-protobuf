defmodule Google.Cloud.Securitycenter.Settings.V1beta1.GetServiceAccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          service_account: String.t()
        }

  defstruct [:name, :service_account]

  field :name, 1, type: :string
  field :service_account, 2, type: :string, json_name: "serviceAccount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.GetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.UpdateSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings: Google.Cloud.Securitycenter.Settings.V1beta1.Settings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:settings, :update_mask]

  field :settings, 1, type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ResetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchGetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          names: [String.t()]
        }

  defstruct [:parent, :names]

  field :parent, 1, type: :string
  field :names, 2, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchGetSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings: [Google.Cloud.Securitycenter.Settings.V1beta1.Settings.t()]
        }

  defstruct [:settings]

  field :settings, 1, repeated: true, type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchCalculateEffectiveSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [
            Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveSettingsRequest.t()
          ]
        }

  defstruct [:parent, :requests]

  field :parent, 1, type: :string

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveSettingsRequest

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.BatchCalculateEffectiveSettingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          settings: [Google.Cloud.Securitycenter.Settings.V1beta1.Settings.t()]
        }

  defstruct [:settings]

  field :settings, 1, repeated: true, type: Google.Cloud.Securitycenter.Settings.V1beta1.Settings

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.GetComponentSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.UpdateComponentSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          component_settings:
            Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:component_settings, :update_mask]

  field :component_settings, 1,
    type: Google.Cloud.Securitycenter.Settings.V1beta1.ComponentSettings,
    json_name: "componentSettings"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ResetComponentSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.CalculateEffectiveComponentSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListDetectorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListDetectorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          detectors: [Google.Cloud.Securitycenter.Settings.V1beta1.Detector.t()],
          next_page_token: String.t()
        }

  defstruct [:detectors, :next_page_token]

  field :detectors, 1, repeated: true, type: Google.Cloud.Securitycenter.Settings.V1beta1.Detector
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListComponentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.ListComponentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          components: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:components, :next_page_token]

  field :components, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SecurityCenterSettingsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService"

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
