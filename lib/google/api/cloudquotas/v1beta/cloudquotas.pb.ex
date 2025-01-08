defmodule Google.Api.Cloudquotas.V1beta.ListQuotaInfosRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.ListQuotaInfosResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :quota_infos, 1,
    repeated: true,
    type: Google.Api.Cloudquotas.V1beta.QuotaInfo,
    json_name: "quotaInfos"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Api.Cloudquotas.V1beta.GetQuotaInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.ListQuotaPreferencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.ListQuotaPreferencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :quota_preferences, 1,
    repeated: true,
    type: Google.Api.Cloudquotas.V1beta.QuotaPreference,
    json_name: "quotaPreferences"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Api.Cloudquotas.V1beta.GetQuotaPreferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Api.Cloudquotas.V1beta.CreateQuotaPreferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :quota_preference_id, 2, type: :string, json_name: "quotaPreferenceId", deprecated: false

  field :quota_preference, 3,
    type: Google.Api.Cloudquotas.V1beta.QuotaPreference,
    json_name: "quotaPreference",
    deprecated: false

  field :ignore_safety_checks, 4,
    repeated: true,
    type: Google.Api.Cloudquotas.V1beta.QuotaSafetyCheck,
    json_name: "ignoreSafetyChecks",
    enum: true
end

defmodule Google.Api.Cloudquotas.V1beta.UpdateQuotaPreferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :quota_preference, 2,
    type: Google.Api.Cloudquotas.V1beta.QuotaPreference,
    json_name: "quotaPreference",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false

  field :ignore_safety_checks, 5,
    repeated: true,
    type: Google.Api.Cloudquotas.V1beta.QuotaSafetyCheck,
    json_name: "ignoreSafetyChecks",
    enum: true
end

defmodule Google.Api.Cloudquotas.V1beta.CloudQuotas.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.api.cloudquotas.v1beta.CloudQuotas",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListQuotaInfos,
      Google.Api.Cloudquotas.V1beta.ListQuotaInfosRequest,
      Google.Api.Cloudquotas.V1beta.ListQuotaInfosResponse

  rpc :GetQuotaInfo,
      Google.Api.Cloudquotas.V1beta.GetQuotaInfoRequest,
      Google.Api.Cloudquotas.V1beta.QuotaInfo

  rpc :ListQuotaPreferences,
      Google.Api.Cloudquotas.V1beta.ListQuotaPreferencesRequest,
      Google.Api.Cloudquotas.V1beta.ListQuotaPreferencesResponse

  rpc :GetQuotaPreference,
      Google.Api.Cloudquotas.V1beta.GetQuotaPreferenceRequest,
      Google.Api.Cloudquotas.V1beta.QuotaPreference

  rpc :CreateQuotaPreference,
      Google.Api.Cloudquotas.V1beta.CreateQuotaPreferenceRequest,
      Google.Api.Cloudquotas.V1beta.QuotaPreference

  rpc :UpdateQuotaPreference,
      Google.Api.Cloudquotas.V1beta.UpdateQuotaPreferenceRequest,
      Google.Api.Cloudquotas.V1beta.QuotaPreference
end

defmodule Google.Api.Cloudquotas.V1beta.CloudQuotas.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Api.Cloudquotas.V1beta.CloudQuotas.Service
end