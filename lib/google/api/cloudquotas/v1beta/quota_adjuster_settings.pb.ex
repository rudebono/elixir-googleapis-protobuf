defmodule Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettings.Enablement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENABLEMENT_UNSPECIFIED, 0
  field :ENABLED, 2
  field :DISABLED, 3
end

defmodule Google.Api.Cloudquotas.V1beta.GetQuotaAdjusterSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.UpdateQuotaAdjusterSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :quota_adjuster_settings, 1,
    type: Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettings,
    json_name: "quotaAdjusterSettings",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :enablement, 2,
    type: Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettings.Enablement,
    enum: true,
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 6, type: :string, deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettingsManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.api.cloudquotas.v1beta.QuotaAdjusterSettingsManager",
    protoc_gen_elixir_version: "0.14.0"

  rpc :UpdateQuotaAdjusterSettings,
      Google.Api.Cloudquotas.V1beta.UpdateQuotaAdjusterSettingsRequest,
      Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettings

  rpc :GetQuotaAdjusterSettings,
      Google.Api.Cloudquotas.V1beta.GetQuotaAdjusterSettingsRequest,
      Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettings
end

defmodule Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettingsManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Api.Cloudquotas.V1beta.QuotaAdjusterSettingsManager.Service
end
