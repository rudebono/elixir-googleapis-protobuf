defmodule Google.Ads.Googleads.V4.Services.GetGeoTargetConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsRequest.LocationNames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          names: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:names]

  field :names, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsRequest.GeoTargets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constants: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:geo_target_constants]

  field :geo_target_constants, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: {atom, any},
          locale: Google.Protobuf.StringValue.t() | nil,
          country_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:query, :locale, :country_code]

  oneof :query, 0
  field :locale, 3, type: Google.Protobuf.StringValue
  field :country_code, 5, type: Google.Protobuf.StringValue

  field :location_names, 1,
    type: Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsRequest.LocationNames,
    oneof: 0

  field :geo_targets, 2,
    type: Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsRequest.GeoTargets,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant_suggestions: [
            Google.Ads.Googleads.V4.Services.GeoTargetConstantSuggestion.t()
          ]
        }

  defstruct [:geo_target_constant_suggestions]

  field :geo_target_constant_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.GeoTargetConstantSuggestion
end

defmodule Google.Ads.Googleads.V4.Services.GeoTargetConstantSuggestion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locale: Google.Protobuf.StringValue.t() | nil,
          reach: Google.Protobuf.Int64Value.t() | nil,
          search_term: Google.Protobuf.StringValue.t() | nil,
          geo_target_constant: Google.Ads.Googleads.V4.Resources.GeoTargetConstant.t() | nil,
          geo_target_constant_parents: [Google.Ads.Googleads.V4.Resources.GeoTargetConstant.t()]
        }

  defstruct [:locale, :reach, :search_term, :geo_target_constant, :geo_target_constant_parents]

  field :locale, 1, type: Google.Protobuf.StringValue
  field :reach, 2, type: Google.Protobuf.Int64Value
  field :search_term, 3, type: Google.Protobuf.StringValue
  field :geo_target_constant, 4, type: Google.Ads.Googleads.V4.Resources.GeoTargetConstant

  field :geo_target_constant_parents, 5,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.GeoTargetConstant
end

defmodule Google.Ads.Googleads.V4.Services.GeoTargetConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.GeoTargetConstantService"

  rpc :GetGeoTargetConstant,
      Google.Ads.Googleads.V4.Services.GetGeoTargetConstantRequest,
      Google.Ads.Googleads.V4.Resources.GeoTargetConstant

  rpc :SuggestGeoTargetConstants,
      Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsRequest,
      Google.Ads.Googleads.V4.Services.SuggestGeoTargetConstantsResponse
end

defmodule Google.Ads.Googleads.V4.Services.GeoTargetConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.GeoTargetConstantService.Service
end
