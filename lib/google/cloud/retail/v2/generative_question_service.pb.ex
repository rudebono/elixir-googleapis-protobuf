defmodule Google.Cloud.Retail.V2.UpdateGenerativeQuestionsFeatureConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generative_questions_feature_config, 2,
    type: Google.Cloud.Retail.V2.GenerativeQuestionsFeatureConfig,
    json_name: "generativeQuestionsFeatureConfig",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.GetGenerativeQuestionsFeatureConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ListGenerativeQuestionConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ListGenerativeQuestionConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generative_question_configs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2.GenerativeQuestionConfig,
    json_name: "generativeQuestionConfigs"
end

defmodule Google.Cloud.Retail.V2.UpdateGenerativeQuestionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generative_question_config, 3,
    type: Google.Cloud.Retail.V2.GenerativeQuestionConfig,
    json_name: "generativeQuestionConfig",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.BatchUpdateGenerativeQuestionConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2.UpdateGenerativeQuestionConfigRequest,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.BatchUpdateGenerativeQuestionConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generative_question_configs, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2.GenerativeQuestionConfig,
    json_name: "generativeQuestionConfigs",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.GenerativeQuestionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2.GenerativeQuestionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :UpdateGenerativeQuestionsFeatureConfig,
      Google.Cloud.Retail.V2.UpdateGenerativeQuestionsFeatureConfigRequest,
      Google.Cloud.Retail.V2.GenerativeQuestionsFeatureConfig

  rpc :GetGenerativeQuestionsFeatureConfig,
      Google.Cloud.Retail.V2.GetGenerativeQuestionsFeatureConfigRequest,
      Google.Cloud.Retail.V2.GenerativeQuestionsFeatureConfig

  rpc :ListGenerativeQuestionConfigs,
      Google.Cloud.Retail.V2.ListGenerativeQuestionConfigsRequest,
      Google.Cloud.Retail.V2.ListGenerativeQuestionConfigsResponse

  rpc :UpdateGenerativeQuestionConfig,
      Google.Cloud.Retail.V2.UpdateGenerativeQuestionConfigRequest,
      Google.Cloud.Retail.V2.GenerativeQuestionConfig

  rpc :BatchUpdateGenerativeQuestionConfigs,
      Google.Cloud.Retail.V2.BatchUpdateGenerativeQuestionConfigsRequest,
      Google.Cloud.Retail.V2.BatchUpdateGenerativeQuestionConfigsResponse
end

defmodule Google.Cloud.Retail.V2.GenerativeQuestionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2.GenerativeQuestionService.Service
end
