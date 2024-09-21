defmodule Google.Cloud.Discoveryengine.V1alpha.IndustryVertical do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INDUSTRY_VERTICAL_UNSPECIFIED, 0
  field :GENERIC, 1
  field :MEDIA, 2
  field :HEALTHCARE_FHIR, 7
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SolutionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SOLUTION_TYPE_UNSPECIFIED, 0
  field :SOLUTION_TYPE_RECOMMENDATION, 1
  field :SOLUTION_TYPE_SEARCH, 2
  field :SOLUTION_TYPE_CHAT, 3
  field :SOLUTION_TYPE_GENERATIVE_CHAT, 4
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SearchUseCase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_USE_CASE_UNSPECIFIED, 0
  field :SEARCH_USE_CASE_SEARCH, 1
  field :SEARCH_USE_CASE_BROWSE, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SearchTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_TIER_UNSPECIFIED, 0
  field :SEARCH_TIER_STANDARD, 1
  field :SEARCH_TIER_ENTERPRISE, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SearchAddOn do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEARCH_ADD_ON_UNSPECIFIED, 0
  field :SEARCH_ADD_ON_LLM, 1
end

defmodule Google.Cloud.Discoveryengine.V1alpha.IdpConfig.IdpType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :IDP_TYPE_UNSPECIFIED, 0
  field :GSUITE, 1
  field :THIRD_PARTY, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :min, 0

  oneof :max, 1

  field :minimum, 1, type: :double, oneof: 0
  field :exclusive_minimum, 2, type: :double, json_name: "exclusiveMinimum", oneof: 0
  field :maximum, 3, type: :double, oneof: 1
  field :exclusive_maximum, 4, type: :double, json_name: "exclusiveMaximum", oneof: 1
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
  field :numbers, 2, repeated: true, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UserInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :user_agent, 2, type: :string, json_name: "userAgent"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EmbeddingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_path, 1, type: :string, json_name: "fieldPath"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DoubleList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GuidedSearchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_refinement_attributes, 1, type: :bool, json_name: "enableRefinementAttributes"
  field :enable_related_questions, 2, type: :bool, json_name: "enableRelatedQuestions"
  field :max_related_questions, 3, type: :int32, json_name: "maxRelatedQuestions"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CustomFineTuningSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_search_adaptor, 1, type: :bool, json_name: "enableSearchAdaptor"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.IdpConfig.ExternalIdpConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :workforce_pool_name, 1, type: :string, json_name: "workforcePoolName"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.IdpConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :idp_type, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.IdpConfig.IdpType,
    json_name: "idpType",
    enum: true

  field :external_idp_config, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.IdpConfig.ExternalIdpConfig,
    json_name: "externalIdpConfig"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Principal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :principal, 0

  field :user_id, 1, type: :string, json_name: "userId", oneof: 0
  field :group_id, 2, type: :string, json_name: "groupId", oneof: 0
end