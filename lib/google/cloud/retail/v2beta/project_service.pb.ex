defmodule Google.Cloud.Retail.V2beta.GetAlertConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.UpdateAlertConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :alert_config, 1,
    type: Google.Cloud.Retail.V2beta.AlertConfig,
    json_name: "alertConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2beta.ProjectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2beta.ProjectService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetAlertConfig,
      Google.Cloud.Retail.V2beta.GetAlertConfigRequest,
      Google.Cloud.Retail.V2beta.AlertConfig

  rpc :UpdateAlertConfig,
      Google.Cloud.Retail.V2beta.UpdateAlertConfigRequest,
      Google.Cloud.Retail.V2beta.AlertConfig
end

defmodule Google.Cloud.Retail.V2beta.ProjectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.ProjectService.Service
end
