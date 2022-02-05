defmodule Google.Cloud.Retail.V2alpha.CreateServingConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          serving_config: Google.Cloud.Retail.V2alpha.ServingConfig.t() | nil,
          serving_config_id: String.t()
        }

  defstruct parent: "",
            serving_config: nil,
            serving_config_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :serving_config, 2,
    type: Google.Cloud.Retail.V2alpha.ServingConfig,
    json_name: "servingConfig",
    deprecated: false

  field :serving_config_id, 3, type: :string, json_name: "servingConfigId", deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.UpdateServingConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serving_config: Google.Cloud.Retail.V2alpha.ServingConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct serving_config: nil,
            update_mask: nil

  field :serving_config, 1,
    type: Google.Cloud.Retail.V2alpha.ServingConfig,
    json_name: "servingConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Retail.V2alpha.DeleteServingConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.GetServingConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.ListServingConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.ListServingConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serving_configs: [Google.Cloud.Retail.V2alpha.ServingConfig.t()],
          next_page_token: String.t()
        }

  defstruct serving_configs: [],
            next_page_token: ""

  field :serving_configs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.ServingConfig,
    json_name: "servingConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Retail.V2alpha.AddControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serving_config: String.t(),
          control_id: String.t()
        }

  defstruct serving_config: "",
            control_id: ""

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :control_id, 2, type: :string, json_name: "controlId", deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.RemoveControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serving_config: String.t(),
          control_id: String.t()
        }

  defstruct serving_config: "",
            control_id: ""

  field :serving_config, 1, type: :string, json_name: "servingConfig", deprecated: false
  field :control_id, 2, type: :string, json_name: "controlId", deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.ServingConfigService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2alpha.ServingConfigService"

  rpc :CreateServingConfig,
      Google.Cloud.Retail.V2alpha.CreateServingConfigRequest,
      Google.Cloud.Retail.V2alpha.ServingConfig

  rpc :DeleteServingConfig,
      Google.Cloud.Retail.V2alpha.DeleteServingConfigRequest,
      Google.Protobuf.Empty

  rpc :UpdateServingConfig,
      Google.Cloud.Retail.V2alpha.UpdateServingConfigRequest,
      Google.Cloud.Retail.V2alpha.ServingConfig

  rpc :GetServingConfig,
      Google.Cloud.Retail.V2alpha.GetServingConfigRequest,
      Google.Cloud.Retail.V2alpha.ServingConfig

  rpc :ListServingConfigs,
      Google.Cloud.Retail.V2alpha.ListServingConfigsRequest,
      Google.Cloud.Retail.V2alpha.ListServingConfigsResponse

  rpc :AddControl,
      Google.Cloud.Retail.V2alpha.AddControlRequest,
      Google.Cloud.Retail.V2alpha.ServingConfig

  rpc :RemoveControl,
      Google.Cloud.Retail.V2alpha.RemoveControlRequest,
      Google.Cloud.Retail.V2alpha.ServingConfig
end

defmodule Google.Cloud.Retail.V2alpha.ServingConfigService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.ServingConfigService.Service
end
