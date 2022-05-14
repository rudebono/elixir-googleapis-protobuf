defmodule Google.Cloud.Talent.V4beta1.ListProfilesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 5, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :read_mask, 4, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Talent.V4beta1.ListProfilesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :profiles, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Profile
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Talent.V4beta1.CreateProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :profile, 2, type: Google.Cloud.Talent.V4beta1.Profile, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.GetProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.UpdateProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :profile, 1, type: Google.Cloud.Talent.V4beta1.Profile, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Talent.V4beta1.DeleteProfileRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Talent.V4beta1.SearchProfilesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :request_metadata, 2,
    type: Google.Cloud.Talent.V4beta1.RequestMetadata,
    json_name: "requestMetadata",
    deprecated: false

  field :profile_query, 3,
    type: Google.Cloud.Talent.V4beta1.ProfileQuery,
    json_name: "profileQuery"

  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :offset, 6, type: :int32
  field :disable_spell_check, 7, type: :bool, json_name: "disableSpellCheck"
  field :order_by, 8, type: :string, json_name: "orderBy"
  field :case_sensitive_sort, 9, type: :bool, json_name: "caseSensitiveSort"

  field :histogram_queries, 10,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQuery,
    json_name: "histogramQueries"

  field :result_set_id, 12, type: :string, json_name: "resultSetId"
  field :strict_keywords_search, 13, type: :bool, json_name: "strictKeywordsSearch"
end
defmodule Google.Cloud.Talent.V4beta1.SearchProfilesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :estimated_total_size, 1, type: :int64, json_name: "estimatedTotalSize"

  field :spell_correction, 2,
    type: Google.Cloud.Talent.V4beta1.SpellingCorrection,
    json_name: "spellCorrection"

  field :metadata, 3, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
  field :next_page_token, 4, type: :string, json_name: "nextPageToken"

  field :histogram_query_results, 5,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.HistogramQueryResult,
    json_name: "histogramQueryResults"

  field :summarized_profiles, 6,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.SummarizedProfile,
    json_name: "summarizedProfiles"

  field :result_set_id, 7, type: :string, json_name: "resultSetId"
end
defmodule Google.Cloud.Talent.V4beta1.SummarizedProfile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :profiles, 1, repeated: true, type: Google.Cloud.Talent.V4beta1.Profile
  field :summary, 2, type: Google.Cloud.Talent.V4beta1.Profile
end
defmodule Google.Cloud.Talent.V4beta1.ProfileService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.talent.v4beta1.ProfileService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListProfiles,
      Google.Cloud.Talent.V4beta1.ListProfilesRequest,
      Google.Cloud.Talent.V4beta1.ListProfilesResponse

  rpc :CreateProfile,
      Google.Cloud.Talent.V4beta1.CreateProfileRequest,
      Google.Cloud.Talent.V4beta1.Profile

  rpc :GetProfile,
      Google.Cloud.Talent.V4beta1.GetProfileRequest,
      Google.Cloud.Talent.V4beta1.Profile

  rpc :UpdateProfile,
      Google.Cloud.Talent.V4beta1.UpdateProfileRequest,
      Google.Cloud.Talent.V4beta1.Profile

  rpc :DeleteProfile, Google.Cloud.Talent.V4beta1.DeleteProfileRequest, Google.Protobuf.Empty

  rpc :SearchProfiles,
      Google.Cloud.Talent.V4beta1.SearchProfilesRequest,
      Google.Cloud.Talent.V4beta1.SearchProfilesResponse
end

defmodule Google.Cloud.Talent.V4beta1.ProfileService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.ProfileService.Service
end
