defmodule Google.Cloud.Visionai.V1alpha1.ListAnalysesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Visionai.V1alpha1.ListAnalysesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :analyses, 1, repeated: true, type: Google.Cloud.Visionai.V1alpha1.Analysis
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.GetAnalysisRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.CreateAnalysisRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :analysis_id, 2, type: :string, json_name: "analysisId", deprecated: false
  field :analysis, 3, type: Google.Cloud.Visionai.V1alpha1.Analysis, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.UpdateAnalysisRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :analysis, 2, type: Google.Cloud.Visionai.V1alpha1.Analysis, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.DeleteAnalysisRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Visionai.V1alpha1.LiveVideoAnalytics.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.visionai.v1alpha1.LiveVideoAnalytics",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListAnalyses,
      Google.Cloud.Visionai.V1alpha1.ListAnalysesRequest,
      Google.Cloud.Visionai.V1alpha1.ListAnalysesResponse

  rpc :GetAnalysis,
      Google.Cloud.Visionai.V1alpha1.GetAnalysisRequest,
      Google.Cloud.Visionai.V1alpha1.Analysis

  rpc :CreateAnalysis,
      Google.Cloud.Visionai.V1alpha1.CreateAnalysisRequest,
      Google.Longrunning.Operation

  rpc :UpdateAnalysis,
      Google.Cloud.Visionai.V1alpha1.UpdateAnalysisRequest,
      Google.Longrunning.Operation

  rpc :DeleteAnalysis,
      Google.Cloud.Visionai.V1alpha1.DeleteAnalysisRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Visionai.V1alpha1.LiveVideoAnalytics.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Visionai.V1alpha1.LiveVideoAnalytics.Service
end